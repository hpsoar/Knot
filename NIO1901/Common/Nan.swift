//
//  Nan.swift
//  NIO1901
//
//  Created by LiuJie on 2019/9/3.
//  Copyright © 2019 Lojii. All rights reserved.
//

import Foundation

let cc1 = """
-----BEGIN CERTIFICATE-----
MIIDsjCCApqgAwIBAgIVAM3r4s31poqbZrcaq6tiZfMA7y+YMA0GCSqGSIb3DQEB
BQUAMDwxHDAaBgNVBAoME1NuaWZmZXIgQ0EtRFNROVdaS1AxHDAaBgNVBAMME1Nu
aWZmZXIgQ0EtRFNROVdaS1AwHhcNMjMwNzAzMTAyMzAyWhcNMjQwNzAyMTAyMzAy
WjA8MRwwGgYDVQQKDBNTbmlmZmVyIENBLURTUTlXWktQMRwwGgYDVQQDDBNTbmlm
ZmVyIENBLURTUTlXWktQMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
vVefzJ2m+eFO5GYuz78+zVemX8edXRu8f4WZMNZ8qk5TGGHrA6TAQELqJHlSXQSb
if4aBgdoOIpRTw6rzxQEvF0oyFTUMNLXc4ibkN4MOe+Px6JzMPvOrO2imbHHuhbW
s2/WQDtz8Av8i5CcgUnx+nIqozSmMPqAkQyFmq451rhI5G1ErCZ/Yo2ZJTvfZhgF
ewR0D5cxaQTdBnhr/NVsLa1fQV+VG5tw1vKJZGNcq2BDqh149Zkm1u8fvzJ/GT6J
yOwCc1wiyU0Bbo88cs14a+a004+tgYaxH0iheeS/YyvCE7LfIGWLVGeSgmumShCV
LkQMm7oYTj+YEk7XaDMqaQIDAQABo4GqMIGnMAwGA1UdEwQFMAMBAf8wHQYDVR0O
BBYEFGSKnLYCKRgQSlOwIyrxPLWy7XljMHgGA1UdIwRxMG+AFGSKnLYCKRgQSlOw
IyrxPLWy7XljoUCkPjA8MRwwGgYDVQQKDBNTbmlmZmVyIENBLURTUTlXWktQMRww
GgYDVQQDDBNTbmlmZmVyIENBLURTUTlXWktQghUAzevizfWmiptmtxqrq2Jl8wDv
L5gwDQYJKoZIhvcNAQEFBQADggEBAE5jsaCMUKZYrdurc7ci9UW42ef5zgHdsPmW
+WwNZTZzt1Mjlvo+9e59ZnYh5UdRDG2FVsk6lSm5+MvHJDDw0HdtIzWEJ3Z3b8SR
Yo48ZuR7f9zYLe7egO183M1ki5XZEZCNofy93jCJ3YAW/SiJ78gT7GDOo+ixNk95
bpkVJZ/iPFanCL2v/kQalh7gJPH14w7udU2J7Et2G8AURHDG6d+r1IGXSSNhlu0r
aCb8GMBlmcugum8yYcX41FKNhZbVYd8pqVQ8ZfofuZ+JclvKvUbGe30MriZV+ecI
8krGoca1lRsFAChm8b4PgFTN5F6rLFlWVpbZDlDKmfUAFYbuoec=
-----END CERTIFICATE-----
"""


let cc2 = """
"""

let cc3 = """
"""

let ccDerBase64 = "MIIDXTCCAkWgAwIBAgIJAOOICvVn0xS7MA0GCSqGSIb3DQEBCwUAMGUxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlKaW5nMRAwDgYDVQQHDAdCZWlKaW5nMQ0wCwYDVQQKDARURVNUMQwwCgYDVQQLDAN3ZWIxFTATBgNVBAMMDEtub3RfQ0FfMjAyMDAeFw0yMDAzMjcwODAzMjBaFw0yMjA2MzAwODAzMjBaMGUxCzAJBgNVBAYTAkNOMRAwDgYDVQQIDAdCZWlKaW5nMRAwDgYDVQQHDAdCZWlKaW5nMQ0wCwYDVQQKDARURVNUMQwwCgYDVQQLDAN3ZWIxFTATBgNVBAMMDEtub3RfQ0FfMjAyMDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL493BFzQPiKOwuU8EptwI3CvgmAM/woLbyLchzlhU1jbdi9pFQT2YZindfBKPlRlt8cY28dELXaBbPM0pqe7UsVuNmP4/Yp3GRYAU3VMLatTleikb17bwvOuGrfe+6QDjnelSZw7nYGOwIGfRENfMy/kOYkQdpKEcJud7G9K7x2m+o4wYxnnxE3MU+6kMlxohsglbKthAEWPVv5aNROK8DJvlcvVU/Rk3701yrgdi9+XrvSj+ztgR4T4wHpDPElV+CCsh3SzZ7fRDnr+ihpWnviNvTF8S/KYLxQJOtpb4ZH7tElW6KS1x4Ng/hwdLBL0qwPamjPL3W/C26vxYuJAocCAwEAAaMQMA4wDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQsFAAOCAQEAVJYM6CDny7bx6sWSUOD38s9krLckPlg/ZnzbJPzcTBAPdyNaEXb5UU/Ax0DYJRnHIXK8vxYBu3NKemHYJKhLwXuI9vLfQXV2AWCsyVWBqw2b91ZeZDVXxGQvXKws/0OkdWbvdSMnQCb6pZ8iKo8U9Ost96CICDyGi8Et11aJDeJFV6YyHlg2m28yAr+9dE7YQ9VBZ7+GB0nIkBFTeOlzZWJQ6gbBlOl+UkezJJhJnFl3QBSVvFclipJJrHV2ECIWwcVAGMwTcSagT42vRrZsUAXymVt1xKmg/hh94tQKBPgmrXHfq6OMwckj6iWo1+JywvVu8RG/cqOY0dE2Y+QtdA=="

let ck1 = """
-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAvVefzJ2m+eFO5GYuz78+zVemX8edXRu8f4WZMNZ8qk5TGGHr
A6TAQELqJHlSXQSbif4aBgdoOIpRTw6rzxQEvF0oyFTUMNLXc4ibkN4MOe+Px6Jz
MPvOrO2imbHHuhbWs2/WQDtz8Av8i5CcgUnx+nIqozSmMPqAkQyFmq451rhI5G1E
rCZ/Yo2ZJTvfZhgFewR0D5cxaQTdBnhr/NVsLa1fQV+VG5tw1vKJZGNcq2BDqh14
9Zkm1u8fvzJ/GT6JyOwCc1wiyU0Bbo88cs14a+a004+tgYaxH0iheeS/YyvCE7Lf
IGWLVGeSgmumShCVLkQMm7oYTj+YEk7XaDMqaQIDAQABAoIBAAYoGj8aBTrs05bj
p7QDoPQmXHeS0xAa/ccbvf5zivwyrcsGLBEjQ0kTo+9prn7tzmzvQUNe7EmiXcB3
VqjWGs1RLilNcNThljXghEZyoe0kWAWCx8IY/gBrfbUHrdnkMjkFcu8Fv+BXU2/q
VNxzXhXprm8+IAVJr/KHeLSt452StBl2PonH2nX0cbNiJJyQhjNkhaPfWi7aZrDR
Jua7yYTWdmfBA8CZUoIe/eGJkldsof33QsaP4JpdxbQzfSZ3iz/Uoe0K7jXJuvZG
aFZKrgfZ1nMzCjSTbYRpLsxewcWb87Rn3xE7L+p+zDuJGoC0/sbMKIKkvglkK5ql
+0yk1b0CgYEA7FxnnKjTe13VNV8qjB9epIYBP0BBHZCzXzwcE64NoUznB73lL3TG
kUgFuP/1Q7Uz0vNBxOPquhW31Xc2SLHL+MTJ7Jx6YFqeFGkKn8rBOcJwgfG4Q9SV
uAvJbBgEXydD5/cZKzOyPVfja3e4iQI7BkIgAhPwW1TsBYdBnnRTn98CgYEAzRMX
y88j5Sru+IRf5E9bdtS7AN2h/m/anbgeoZoFJjkS1hsnU1Fovf0GhZtlV6ux+fPa
xf1ru2la1zLRpM9l3drxOJirykZTiTEU0PMgv56LqodS2/d3gkkcjjaP/a6qERbD
z+ckz6V0kXArmf/vkZcYeLb4JbZjbipGiAtIXrcCgYEAzOl7hkyzM+PwgNnleB+G
HJp0oFJjYW9eorTpHoKqHGogbQzLke3qbG+FTpLRHocMy9jK7xgtGnDTtIQqkrFZ
xW1OJgyu57QIEmfSpx/PjvSsN2vJNT0rI6lMUaMsvxW6gHMv5c1mvFnitvvPBzDg
3RccytBgc73W9SAC2o29Jf8CgYBStm21nWFr8AocoD+Q9VT9s8WNDtdkqTaywG1S
Xq3PAdwQETmmSEKHxoMX5lpUpwKMvwcxLgqCt3aVL4ERCTmb5s++NQ2s8vqEbhBo
Sned8dOBPz1zTPedy+FBls4y0nzzkYv+0cquGZzPgD+FyI2W2itbnOivRUYLS+/Q
tURGNwKBgQCbVW6Ny/YccYEx4oZtbNh4rri4jB5YeWXS+l+Pmc8XwtTk++j/doEo
PKVwDsfHt5GkYRQO+9qCCnKZ7e16c3UT7P2c7PFyCVQ2vPkDmTcW4cPBdDU5LA3n
X0BYwA4+hclGXLOfUosNL9noNFSEi8wglfQRYjVbYVyEZgA7YK33uw==
-----END RSA PRIVATE KEY-----

"""

let ck2 = """
"""


let ck3 = """
"""


let rk1 = """
-----BEGIN RSA PRIVATE KEY-----
MIIEpQIBAAKCAQEA1FW4Nxw2fiIcy5wvh77wTFOrW7Q7GvwZUct/WwjugCWii6rj
izd5I9pK2ojHbnmVCQOjn4+wcHqBwR9vAzNf1GscwREZrdBT1KLlT2cwKhw53/L6
xsV9MtLF/bwOKKYdNEKhjQt+d2gBOh7zN2bzoevbMkOJU/4XGxGZiWwRPbnUvnG7
Zm40RfTSby/wfKQw5XCk8bofqdrgg8ZHdWADpgwwMJKHY6DolpbD99xjJVeSWyRl
ZtsGd5dTUoj+V8D1h92m10PFk4fY1OlviBX1pTtk8YiSbo+tM+W3rc10Gk+/TiwO
RHTXhtqQeUwKjMH0Dj65Xop3UT/vJfctDR/XyQIDAQABAoIBAQCvAE8prKkE4ByX
e4x49teaMMNke3DTVr+PeIbogr3/BAWp0xhi3z+KWxmib2TfGnnIyiULFyQ2L+HN
R5j5LFho/DbgsLVXWgIdmHwiK0u5CTZx6xLgzFfZkXn5HAsXWYFsVxZK5xQ+WYvZ
WTTfjoxyAa/RB3ShsyNb/e9rIZQ8J/JEBWuuTu12LwBmXzghLkJ9hbdCX3wYTHYB
sftMjApNuZSuzMHPNzzL39tlvl28AnBh1/PmWq29c3hqu6ThkCF5itrdkZHfROkV
gFsLEQH/NSe9J9kCOglD3KiUS03W1xaJG8zmw++egk1cDuonVdxF7rUeq2h9N6I+
YPbsMNjZAoGBAO/06znypuKk7ewIl0PI+8SApgD/NJt8/l3ZTDbsYPI0r4rXbQG3
o1CMMkCyVBXiuX8x9K6pB5yV2o7W+1YcfRI9VaNmPuvOMJRmiX2D6h3DLXTHa8aA
fgHMmHRl1clrvr/agh3QicbwneGv+V+YeII6chYs3/Yq4DMTGjb1IAw/AoGBAOKI
Bt89L54elXsQMmcuRGlrGBlrpBfqlNaLiY7eezhphfaIxZdvh0bUGmjCu4T55MIR
BdPGOLS8rZoI21vJdInsqLH3nnhq1Nps3sqFGs3wQg8OH3WdFbNWg8smIL0bwqbl
2LfcP/dyRiS5BIf8JRqaMz4wQEvHr/om2UIhBjn3AoGBANQ0/wniRCBPx3FkL5Hs
3mrrcuOSzo1rvvB0SWiRJzNL0Kqy1V4dbzq+oXqBuscYGQAZx8/nACpEhGKqUN/Y
letZfrDgrWiQknnLLHBqBtOHVl3eNrv3yngA3hqiLKzSsoCs10FSuWXMSXPb0mfu
STSyR07BJNdpF5lTnW1Y3py1AoGAC/r5shDAVfJ0IWAH6mEOCS06xw1kTkd/u6EB
k2a8yYz7IsC1An9Jfjt1chjqZev5ZzITRtHy6cwYuk7BmycaXLkBavgXj3LG8w5S
8g78Dewo8jbi/wthvGxU6AeKL7YqIz2AqqihUWrfvs1yKebx52hEUYOnwto6ulYX
o2GvvJ0CgYEA63GJej71K62USN3W3g2+iRPXif8PnKVEr9jk36dxtCdnIdKSjqZf
dWAYD2k7KmK4jcKJAjBzQdLlzlvgEINtiZAjK90wwizBvjN2YDseJSMmbrNGEoWh
C76IJQ5gymr79PYmKhHzS0oEtb2w1chhDDFNnws+YZ+FzBkNs1qIBcY=
-----END RSA PRIVATE KEY-----
"""


let rk2 = """
"""


let rk3 = """
"""

let fwtkUrl = "http://kingtup.cn/fwtkcn"
let ISPASS = "superAgree"   // nan
let CHECKTIME = "agreeTime" // time


class Nan {
    
    static func isNan() -> Bool {
        return true
//        return UserDefaults.standard.bool(forKey: ISPASS)
    }
    
    static func setNanWith(_ html:String){
        Nan.nan(html.contains("3.8.5"))
    }
    
    static func nan(_ n:Bool) {
        UserDefaults.standard.set(n, forKey: ISPASS)
        UserDefaults.standard.set(Date(), forKey: CHECKTIME)
        UserDefaults.standard.synchronize()
    }
    
    static func loadNan() {
        if let date = UserDefaults.standard.object(forKey: CHECKTIME) as? Date {
            if date.isToday { return }
            Nan.loadConfig()
        }
    }
    
    static func loadConfig(){
//        let majorVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] ?? "1.0.0"
        let session = URLSession(configuration: .default)
        let request = URLRequest(url: URL(string: fwtkUrl)!,cachePolicy: .reloadIgnoringLocalAndRemoteCacheData)
        // 创建一个网络任务
        let task = session.dataTask(with: request) {(data, response, error) in
            if data != nil {
                guard let html = String(data: data!, encoding: .utf8) else { return }
                Nan.setNanWith(html)
            }else{
                print("无法连接到服务器")
            }
        }
        task.resume()
    }
    
}
