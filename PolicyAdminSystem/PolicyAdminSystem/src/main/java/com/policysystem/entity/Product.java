package com.policysystem.entity;

public enum Product {
	Education_Package("Education Package"), PNB_MetLife_Bima_Yojana("PNB MetLife Bima Yojana"),
	PNB_MetLife_Complete_Loan_Protection_Plan("PNB MetLife Complete Loan Protection Plan"),
	PNB_MetLife_Guaranteed_Increasing_Income_Plan("PNB MetLife Guaranteed Increasing Income Plan"),
	PNB_MetLife_POS_Suraksha("PNB MetLife -POS Suraksha"), SBI_Life_Annuity_Plus("	SBI Life - Annuity Plus"),
	Max_Life_Assured_Wealth_Plan("Max Life Assured Wealth Plan"), Kotak_Term_Group_Plan("	Kotak Term Group Plan"),
	IDBI_Federal_Life_Insurance_Guaranteed_Wealth_Plan("IDBI Federal Life Insurance Guaranteed Wealth Plan"),
	ICICI_Pru1_Wealth("ICICI Pru1 Wealth"), Canara_HSBC_Oriental_Bank_of_Commerce_Life_Easy_Bachat_Plan(
			"Canara HSBC Oriental Bank of Commerce Life Easy Bachat Plan");

	private String name;

	private Product(String name) {
		this.name = name;
	}

}
