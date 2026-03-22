package com.cl.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.function.Consumer;
import java.util.stream.Collectors;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import org.springframework.util.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.Wrapper;

/**
 * Mybatis-Plus工具类
 */
public class MPUtil {
    public static final char UNDERLINE = '_';

    //mybatis plus allEQ 表达式转换
    public static Map<String, Object> allEQMapPre(Object bean, String pre) {
        Map<String, Object> map = BeanUtil.beanToMap(bean,false,true);
        return camelToUnderlineMap(map, pre);
    }

    //mybatis plus allEQ 表达式转换
    public static Map<String, Object> allEQMap(Object bean) {
        Map<String, Object> map = BeanUtil.beanToMap(bean);
        return camelToUnderlineMap(map, "");
    }

    public static <T> QueryWrapper<T> allLikePre(QueryWrapper<T> wrapper, Object bean, String pre) {
        Map<String, Object> map = BeanUtil.beanToMap(bean);
        Map<String, Object> result = camelToUnderlineMap(map, pre);
        return genLike(wrapper, result);
    }

    public static <T> QueryWrapper<T> allLike(QueryWrapper<T> wrapper, Object bean) {
        Map<String, Object> result = BeanUtil.beanToMap(bean, true, true);
        return genLike(wrapper, result);
    }

    public static <T> QueryWrapper<T> genLike(QueryWrapper<T> wrapper, Map<String, Object> param) {
        Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            if (i > 0) wrapper.and(w -> {
                // 这里需要在下个循环中处理
            });
            Map.Entry<String, Object> entry = it.next();
            String key = entry.getKey();
            String value = entry.getValue() != null ? entry.getValue().toString() : "";

            if (i == 0) {
                wrapper.like(key, value);
            } else {
                // 对于后续条件，使用嵌套的and
                wrapper.and(w -> w.like(key, value));
            }
            i++;
        }
        return wrapper;
    }

    public static <T> QueryWrapper<T> likeOrEq(QueryWrapper<T> wrapper, Object bean) {
        Map<String, Object> result = BeanUtil.beanToMap(bean, true, true);
        return genLikeOrEq(wrapper, result);
    }

    public static <T> QueryWrapper<T> genLikeOrEq(QueryWrapper<T> wrapper, Map<String, Object> param) {
        Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            Consumer<QueryWrapper<T>> conditionConsumer = w -> {
                Map.Entry<String, Object> entry = it.next();
                String key = entry.getKey();
                if (entry.getValue() != null && entry.getValue().toString().contains("%")) {
                    w.like(key, entry.getValue().toString().replace("%", ""));
                } else {
                    w.eq(key, entry.getValue());
                }
            };

            if (i == 0) {
                conditionConsumer.accept(wrapper);
            } else {
                wrapper.and(conditionConsumer);
            }
            i++;
        }
        return wrapper;
    }

    public static <T> QueryWrapper<T> allEq(QueryWrapper<T> wrapper, Object bean) {
        Map<String, Object> result = BeanUtil.beanToMap(bean, true, true);
        return genEq(wrapper, result);
    }

    public static <T> QueryWrapper<T> genEq(QueryWrapper<T> wrapper, Map<String, Object> param) {
        Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            Consumer<QueryWrapper<T>> conditionConsumer = w -> {
                Map.Entry<String, Object> entry = it.next();
                String key = entry.getKey();
                w.eq(key, entry.getValue());
            };

            if (i == 0) {
                conditionConsumer.accept(wrapper);
            } else {
                wrapper.and(conditionConsumer);
            }
            i++;
        }
        return wrapper;
    }

    public static <T> QueryWrapper<T> between(QueryWrapper<T> wrapper, Map<String, Object> params) {
        for (String key : params.keySet()) {
            String columnName = "";
            Object value = params.get(key);
            if (value == null) continue;

            if (key.endsWith("_start")) {
                columnName = key.substring(0, key.indexOf("_start"));
                if (StringUtils.isNotBlank(value.toString())) {
                    wrapper.ge(columnName, value);
                }
            }
            if (key.endsWith("_end")) {
                columnName = key.substring(0, key.indexOf("_end"));
                if (StringUtils.isNotBlank(value.toString())) {
                    wrapper.le(columnName, value);
                }
            }
        }
        return wrapper;
    }

    public static <T> QueryWrapper<T> sort(QueryWrapper<T> wrapper, Map<String, Object> params) {
        String order = "";
        if (params.get("order") != null && StringUtils.isNotBlank(params.get("order").toString())) {
            order = params.get("order").toString();
        }
        if (params.get("sort") != null && StringUtils.isNotBlank(params.get("sort").toString())) {
            String sortField = params.get("sort").toString();
            if (order.equalsIgnoreCase("desc")) {
                wrapper.orderByDesc(sortField);
            } else {
                wrapper.orderByAsc(sortField);
            }
        }
        return wrapper;
    }

    /**
     * 驼峰格式字符串转换为下划线格式字符串
     */
    public static String camelToUnderline(String param) {
        if (param == null || "".equals(param.trim())) {
            return "";
        }
        int len = param.length();
        StringBuilder sb = new StringBuilder(len);
        for (int i = 0; i < len; i++) {
            char c = param.charAt(i);
            if (Character.isUpperCase(c)) {
                sb.append(UNDERLINE);
                sb.append(Character.toLowerCase(c));
            } else {
                sb.append(c);
            }
        }
        return sb.toString();
    }

    public static void main(String[] ages) {
        System.out.println(camelToUnderline("ABCddfANM"));
    }

    public static Map<String, Object> camelToUnderlineMap(Map<String, Object> param, String pre) {
        Map<String, Object> newMap = new HashMap<String, Object>();
        Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<String, Object> entry = it.next();
            String key = entry.getKey();
            String newKey = camelToUnderline(key);
            if (pre.endsWith(".")) {
                newMap.put(pre + newKey, entry.getValue());
            } else if (StringUtils.isEmpty(pre)) {
                newMap.put(newKey, entry.getValue());
            } else {
                newMap.put(pre + "." + newKey, entry.getValue());
            }
        }
        return newMap;
    }

    /**
     * 将List<Map<String, Object>>中的所有Map的键从驼峰命名转换为蛇形命名。
     *
     * @param camelList 驼峰命名的List<Map<String, Object>>
     * @return 蛇形命名的List<Map<String, Object>>
     */
    public static List<Map<String, Object>> camelListToSnake(List<Map<String, Object>> camelList) {
        return camelList.stream()
                .map(map -> camelMapToSnake(map))
                .collect(Collectors.toList());
    }

    /**
     * 将Map<String, Object>中的所有键从驼峰命名转换为蛇形命名。
     *
     * @param camelMap 驼峰命名的Map<String, Object>
     * @return 蛇形命名的Map<String, Object>
     */
    public static Map<String, Object> camelMapToSnake(Map<String, Object> camelMap) {
        Map<String, Object> snakeMap = new HashMap<>();
        for (Map.Entry<String, Object> entry : camelMap.entrySet()) {
            String snakeKey = camelToSnake(entry.getKey());
            snakeMap.put(snakeKey, entry.getValue());
        }
        return snakeMap;
    }


    /**
     * 将驼峰命名转换为蛇形命名。
     *
     * @param input 驼峰命名的字符串
     * @return 蛇形命名的字符串
     */
    public static String camelToSnake(String input) {
        // 使用正则表达式匹配大写字母，并在其前面添加下划线，然后转换为小写
        return input.replaceAll(
                String.format("%s|%s|%s",
                        "(?<=[A-Z])(?=[A-Z][a-z])", // 匹配连续大写字母中的第二个大写字母
                        "(?<=[^A-Z])(?=[A-Z])",     // 匹配第一个大写字母，前提是它前面不是大写字母
                        "(?<=[A-Za-z])(?=[A-Z])"    // 匹配大写字母，前提是它前面是小写字母
                ),
                "_"
        ).toLowerCase();
    }

    /**
     * 将List<Map<String, Object>>中的所有Map的键从蛇形命名转换为驼峰命名。
     *
     * @param snakeList 蛇形命名的List<Map<String, Object>>
     * @return 驼峰命名的List<Map<String, Object>>
     */
    public static List<Map<String, Object>> snakeListToCamel(List<Map<String, Object>> snakeList) {
        return snakeList.stream()
                .map(map -> snakeMapToCamel(map))
                .collect(Collectors.toList());
    }

    /**
     * 将Map<String, Object>中的所有键从蛇形命名转换为驼峰命名。
     *
     * @param snakeMap 蛇形命名的Map<String, Object>
     * @return 驼峰命名的Map<String, Object>
     */
    public static Map<String, Object> snakeMapToCamel(Map<String, Object> snakeMap) {
        Map<String, Object> camelMap = new HashMap<>();
        if (!CollectionUtils.isEmpty(snakeMap)) {
            for (Map.Entry<String, Object> entry : snakeMap.entrySet()) {
                String camelKey = snakeToCamel(entry.getKey());
                camelMap.put(camelKey, entry.getValue());
            }
        }
        return camelMap;
    }

    /**
     * 将蛇形命名转换为驼峰命名。
     *
     * @param str 蛇形命名的字符串
     * @return 驼峰命名的字符串
     */
    public static String snakeToCamel(String str) {
        StringBuilder sb = new StringBuilder();
        boolean nextUpperCase = false;
        for (char c : str.toCharArray()) {
            if (c == '_') {
                nextUpperCase = true;
            } else {
                if (nextUpperCase) {
                    sb.append(Character.toUpperCase(c));
                    nextUpperCase = false;
                } else {
                    sb.append(c);
                }
            }
        }
        return sb.toString();
    }
}
