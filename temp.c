int mosquitto_pub_topic_check(const char *str)
{
	int len = 0;
    
	while(str && str[0]){
		if(str[0] == '+' || str[0] == '#'){
			return MOSQ_ERR_INVAL;
		}
		len++;
		str = &str[1];
	}
	if(len > 65535) return MOSQ_ERR_INVAL;

	return MOSQ_ERR_SUCCESS;
}
