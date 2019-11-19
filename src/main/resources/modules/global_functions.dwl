%dw 2.0
import java!org::apache::commons::lang3::StringUtils
fun substring(value:String, size:Number) =  if (sizeOf(value default '')>size) StringUtils::substring(value,0,size) else value

