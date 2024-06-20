package fpoly.edu.service;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class StringToDateConverter implements Converter<String, Date> {
    private static final String DATE_FORMAT = "yyyy-MM-dd";
    private static final SimpleDateFormat dateFormat = new SimpleDateFormat(DATE_FORMAT);

    @Override
    public Date convert(String source) {
        try {
            return dateFormat.parse(source);
        } catch (Exception e) {
            throw new IllegalArgumentException("Invalid date format. Please use this pattern\"" + DATE_FORMAT + "\"");
        }
    }
}
