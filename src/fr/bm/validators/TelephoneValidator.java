package fr.bm.validators;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

public class TelephoneValidator extends FieldValidatorSupport{

	@Override
	public void validate(Object obj) throws ValidationException {
		String champ = this.getFieldName();
		String valChamp = (String) this.getFieldValue(champ, obj);

		String regex ="((^\\+33 ?\\d)|(^0\\d))( ?\\d{2}){4}";

		if(!valChamp.matches(regex) ){
			addFieldError(champ, obj);
		}
		
	}

}
