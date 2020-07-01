package test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class MapTest{
	public static void main(String[] args){
//		Map<String,String> map = new HashMap<>(); //map은 철자나 대문자 소문자 또는 스페이스바 영역에 민감함, 좀만틀려도 null나옴
//		map.put("name","하하");
		
		List<Map<String,String>> pList = new ArrayList<>();
		for(int i =0;i<=10;i++) {
			Map<String,String> p = new HashMap<>();
			
			p.put("name", "이름"+i);
			p.put("age", i+"살");
			pList.add(p);
			
		}
		for(int i = 0;i<10;i++) {
			Map<String,String> p = pList.get(i);
			System.out.println("이름 : " + p.get("name"));
			System.out.println("나이 : " + p.get("age"));
		}
		
	}
}
