package util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.JsonGenerator;
import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.JavaType;

import dao.Userinfo;

public class JsonUtil {
	public static String BeanToJson(Object bean) {
		try {

			JsonGenerator jsonGenerator = null;
			ObjectMapper objectMapper = new ObjectMapper();

			// System.out.println("jsonGenerator");
			// writeObject����ת��java����eg:JavaBean/Map/List/Array��
			// jsonGenerator.writeObject(bean);

			// System.out.println();

			// System.out.println("ObjectMapper");
			// writeValue���к�writeObject��ͬ�Ĺ���

			// objectMapper.writeValue(System.out, bean);

			// System.out.println(objectMapper.writeValueAsString(bean));

			return objectMapper.writeValueAsString(bean);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;

	}

	public static String listToJson(List list) {
		try {
			// JsonGenerator jsonGenerator = null ;
			ObjectMapper objectMapper = new ObjectMapper();

			// System.out.println("list.size():"+list.size());

			// System.out.println("jsonGenerator");
			// listת����JSON�ַ���
			// jsonGenerator.writeObject(list);
			// System.out.println();
			// System.out.println("ObjectMapper");
			// ��objectMapperֱ�ӷ���listת���ɵ�JSON�ַ���
			// System.out.println("1###" +
			// objectMapper.writeValueAsString(list));
			// System.out.print("2###");
			// objectMapper.writeValue(System.out, list);

			// System.out.println();
			// System.out.println("Test.list");
			// System.out.println(objectMapper.writeValueAsString(list));
			// objectMapper listת����JSON�ַ���
			return objectMapper.writeValueAsString(list);

		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Object jsonToBean(String json, Class beanClass) {

		ObjectMapper objectMapper = new ObjectMapper();

		try {
			Object acc = objectMapper.readValue(json, beanClass);
			// System.out.println(acc.getName());
			// System.out.println(acc);
			return acc;
		} catch (JsonParseException e) {
			e.printStackTrace();
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static List jsonToList(String json, Class beanClass) {

		ObjectMapper objectMapper = new ObjectMapper();
		// objectMapper.configure(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY,
		// true);
		JavaType javaType = getCollectionType(ArrayList.class, beanClass);
		List<Object> lst = new ArrayList();
		try {
			lst = (List<Object>) objectMapper.readValue(json, javaType);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	public static List jsonToList(String json) {

		ObjectMapper objectMapper = new ObjectMapper();
		// objectMapper.configure(DeserializationConfig.Feature.ACCEPT_SINGLE_VALUE_AS_ARRAY,
		// true);
		// JavaType javaType = getCollectionType(ArrayList.class, beanClass);
		List<Object> lst = new ArrayList();
		try {
			lst = (List) objectMapper.readValue(json, ArrayList.class);
		} catch (JsonParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lst;
	}

	/**
	 * ��ȡ���͵�Collection Type
	 * 
	 * @param collectionClass
	 *            ���͵�Collection
	 * @param elementClasses
	 *            Ԫ����
	 * @return JavaType Java����
	 * @since 1.0
	 */
	public static JavaType getCollectionType(Class<?> collectionClass,
			Class<?>... elementClasses) {
		ObjectMapper objectMapper = new ObjectMapper();

		return objectMapper.getTypeFactory().constructParametricType(
				collectionClass, elementClasses);
	}
	
	public static String mapToJson(HashMap map){
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			return objectMapper.writeValueAsString(map);
		} catch (JsonGenerationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JsonMappingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	public static Map jsonToMap(String json) {

		ObjectMapper objectMapper = new ObjectMapper();
	    try {
	        Map<String, Map<String, Object>> maps = objectMapper.readValue(json, Map.class);
	        return maps;
	       
	    } catch (JsonParseException e) {
	        e.printStackTrace();
	    } catch (JsonMappingException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    }
	    return null;
	}
}
