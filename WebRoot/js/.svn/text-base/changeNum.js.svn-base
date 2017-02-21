//精确到两位小数
function changeNum(floatvar){
                            var n1 = parseFloat(floatvar);
                            if (isNaN(n1)){
                                alert('不是有效数字');
                                return false;
                            }
                            var n1 = Math.round(floatvar*100)/100;
                            var n2 = n1.toString();
                            var pos_temp = n2.indexOf('.');
                            if (pos_temp < 0){
                                var pos_temp = n2.length;
                                n2 += '.';
                            }
                            while (n2.length <= pos_temp + 2){
                                n2 += '0';
                            }
                            return n2;
                        }