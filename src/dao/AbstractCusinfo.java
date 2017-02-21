package dao;

/**
 * AbstractCusinfo entity provides the base persistence definition of the
 * Cusinfo entity. @author MyEclipse Persistence Tools
 */

public abstract class AbstractCusinfo implements java.io.Serializable {

	// Fields

	private Integer id;
	private String login;
	private String password;
	private String name;
	private String phone;

	// Constructors

	/** default constructor */
	public AbstractCusinfo() {
	}

	/** full constructor */
	public AbstractCusinfo(String login, String password, String name,
			String phone) {
		this.login = login;
		this.password = password;
		this.name = name;
		this.phone = phone;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getLogin() {
		return this.login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}