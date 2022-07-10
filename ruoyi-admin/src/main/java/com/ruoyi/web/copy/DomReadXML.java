package com.ruoyi.web.copy;

import org.w3c.dom.Document;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.util.ArrayList;
import java.util.List;

public class DomReadXML {
    public List<String> readXml() {
        List<String> path = new ArrayList<>();
        try {
            // 创建解析器工厂
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder db = factory.newDocumentBuilder();
            // 创建一个Document对象
            Document doc = db.parse("path.xml");
            NodeList bookList = doc.getElementsByTagName("path");
            // 获取节点个数

            // 遍历每个节点
            for (int i = 0; i < bookList.getLength(); i++) {
                // 索引从零开始
                Node book = bookList.item(i);
                // 获取节点所有属性集合
                NodeList childNodes = book.getChildNodes();
                for (int k = 0; k < childNodes.getLength(); k++) {
                    // 区分,去掉空格和换行符
                    if (childNodes.item(k).getNodeType() == Node.ELEMENT_NODE) {
                        // 获取element类型的节点和节点值
                        path.add(childNodes.item(k).getFirstChild().getNodeValue());
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        //System.out.println(path.get(0));
        //String s = path.get(1);
        //System.out.println(path);
        return path;
    }
}
