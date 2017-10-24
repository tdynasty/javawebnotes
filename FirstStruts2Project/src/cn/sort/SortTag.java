package cn.sort;

import java.util.Comparator;

public class SortTag implements Comparator{

	@Override
	public int compare(Object o1, Object o2) {
		// TODO Auto-generated method stub
		return o1.toString().compareTo(o2.toString());
	}

}
