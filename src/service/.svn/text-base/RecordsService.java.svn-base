package service;

import java.util.List;

import dao.Records;
import dao.RecordsDAO;
import dao.Userinfo;

public class RecordsService {
	Records records=new Records();
	RecordsDAO recordsdao=new RecordsDAO();
	public void update(Records r){
		recordsdao.update(r);
	}
	public void save(Records transientInstance) {
		recordsdao.save(transientInstance);
	}
	public Records getRecords() {
		return records;
	}
	public void setRecords(Records records) {
		this.records = records;
	}
	public RecordsDAO getRecordsdao() {
		return recordsdao;
	}
	public void setRecordsdao(RecordsDAO recordsdao) {
		this.recordsdao = recordsdao;
	}
	

}
