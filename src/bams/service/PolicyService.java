package bams.service;

import java.sql.Connection;

import bams.dao.PolicyDAO;
import bams.entity.AllProperty;
import bams.entity.EmployerDuty;
import bams.entity.EnterprisePackage;
import bams.entity.Family;
import bams.entity.Freight;
import bams.entity.Office;
import bams.entity.Vehicle;
import bams.impl.PolicyDAOImpl;
import bams.util.Database;

public class PolicyService {

	/*
	 * @author xsailor
	 */
	private PolicyDAO policyDAO = new PolicyDAOImpl();
	//添加一个财产一切险保单
	public boolean addAllProperty(AllProperty allproperty){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyDAO.setConnection(connection);
			result = policyDAO.addAllProperty(allproperty);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	//添加一个雇主责任保险单
	public boolean addEmployerDuty(EmployerDuty employerduty){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyDAO.setConnection(connection);
			result = policyDAO.addEmployerDuty(employerduty);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	//添加一个货物运输保险单
	public boolean addFreight(Freight freight){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyDAO.setConnection(connection);
			result = policyDAO.addFreight(freight);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	//添加一个机动车保险单
	public boolean addVehicle(Vehicle vehicle){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyDAO.setConnection(connection);
			result = policyDAO.addVehicle(vehicle);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	//添加一个全家无忧保险单
	public boolean addFamily(Family family){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyDAO.setConnection(connection);
			result = policyDAO.addFamily(family);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	//添加一个办公司综合保险单
	public boolean addOffice(Office office){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyDAO.setConnection(connection);
			result = policyDAO.addOffice(office);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
	
	//添加一个中小企业一揽子保险委托书
	public boolean addEnterprisePackage(EnterprisePackage enterprisepackage){
		boolean result = false;
		Connection connection = null;
		try {
			connection = Database.getConnection();
			policyDAO.setConnection(connection);
			result = policyDAO.addEnterprisePackage(enterprisepackage);
			Database.commit();
		} catch (Exception e) {
			e.printStackTrace();
			Database.rollback();
		} finally {
			Database.releaseConnection(connection);
		}
		return result;
	}
}
