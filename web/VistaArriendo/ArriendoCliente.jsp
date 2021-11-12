<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cliente</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        <link href="Css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
        <link href="Css/datatable/style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <ul class="nav nav-pills bg-nav-pills nav-justified mb-0">
                            <li class="nav-item">
                                <a href="#billing-information" data-toggle="tab" aria-expanded="false" class="nav-link active">
                                    <i class="fas fa-shopping-cart f-18"></i>
                                    <span class="d-none d-lg-inline-block m-l-10">Billing Info</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#shipping-information" data-toggle="tab" aria-expanded="true" class="nav-link">
                                    <i class="fas fa-truck f-18"></i>
                                    <span class="d-none d-lg-inline-block m-l-10">Shipping Info</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="#payment-information" data-toggle="tab" aria-expanded="false" class="nav-link">
                                    <i class="fas fa-money-check-alt f-18"></i>
                                    <span class="d-none d-lg-inline-block m-l-10">Payment Info</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="tab-content">
                    <div class="tab-pane show active" id="billing-information">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-2">Billing information</h5>
                                <p class="text-muted mb-0">Fill the form below in order to send you the order's invoice.</p>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="first-name">First Name</label>
                                                <input class="form-control" type="text" placeholder="Enter your first name" id="first-name" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="last-name">Last Name</label>
                                                <input class="form-control" type="text" placeholder="Enter your last name" id="last-name" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="Email"><span class="text-danger">*</span> Email Address</label>
                                                <input class="form-control" type="email" placeholder="Enter your email" id="Email" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="Phone"><span class="text-danger">*</span> Phone</label>
                                                <input class="form-control" type="text" placeholder="(+99) 9999 999 999" id="Phone" />
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="billing-address">Address</label>
                                                <input class="form-control" type="text" placeholder="Enter full address" id="billing-address">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="billing-town-city">Town / City</label>
                                                <input class="form-control" type="text" placeholder="Enter your city name" id="billing-town-city" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="billing-state">State</label>
                                                <input class="form-control" type="text" placeholder="Enter your state" id="billing-state" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="billing-zip-postal">Zip / Postal Code</label>
                                                <input class="form-control" type="text" placeholder="Enter your zip code" id="billing-zip-postal" />
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>Country</label>
                                                <select class="form-control">
                                                    <option value="0">Select Country</option>
                                                    <option value="AF">Afghanistan</option>
                                                    <option value="AL">Albania</option>
                                                    <option value="DZ">Algeria</option>
                                                    <option value="AS">American Samoa</option>
                                                    <option value="AD">Andorra</option>
                                                    <option value="AO">Angola</option>
                                                    <option value="AI">Anguilla</option>
                                                    <option value="AQ">Antarctica</option>
                                                    <option value="AR">Argentina</option>
                                                    <option value="AM">Armenia</option>
                                                    <option value="AW">Aruba</option>
                                                    <option value="AU">Australia</option>
                                                    <option value="AT">Austria</option>
                                                    <option value="AZ">Azerbaijan</option>
                                                    <option value="BS">Bahamas</option>
                                                    <option value="BH">Bahrain</option>
                                                    <option value="BD">Bangladesh</option>
                                                    <option value="BB">Barbados</option>
                                                    <option value="BY">Belarus</option>
                                                    <option value="BE">Belgium</option>
                                                    <option value="BZ">Belize</option>
                                                    <option value="BJ">Benin</option>
                                                    <option value="BM">Bermuda</option>
                                                    <option value="BT">Bhutan</option>
                                                    <option value="BO">Bolivia</option>
                                                    <option value="BW">Botswana</option>
                                                    <option value="BV">Bouvet Island</option>
                                                    <option value="BR">Brazil</option>
                                                    <option value="BN">Brunei Darussalam</option>
                                                    <option value="BG">Bulgaria</option>
                                                    <option value="BF">Burkina Faso</option>
                                                    <option value="BI">Burundi</option>
                                                    <option value="KH">Cambodia</option>
                                                    <option value="CM">Cameroon</option>
                                                    <option value="CA">Canada</option>
                                                    <option value="CV">Cape Verde</option>
                                                    <option value="KY">Cayman Islands</option>
                                                    <option value="CF">Central African Republic</option>
                                                    <option value="TD">Chad</option>
                                                    <option value="CL">Chile</option>
                                                    <option value="CN">China</option>
                                                    <option value="CX">Christmas Island</option>
                                                    <option value="CC">Cocos (Keeling) Islands</option>
                                                    <option value="CO">Colombia</option>
                                                    <option value="KM">Comoros</option>
                                                    <option value="CG">Congo</option>
                                                    <option value="CK">Cook Islands</option>
                                                    <option value="CR">Costa Rica</option>
                                                    <option value="CI">Cote d'Ivoire</option>
                                                    <option value="HR">Croatia (Hrvatska)</option>
                                                    <option value="CU">Cuba</option>
                                                    <option value="CY">Cyprus</option>
                                                    <option value="CZ">Czech Republic</option>
                                                    <option value="DK">Denmark</option>
                                                    <option value="DJ">Djibouti</option>
                                                    <option value="DM">Dominica</option>
                                                    <option value="DO">Dominican Republic</option>
                                                    <option value="EC">Ecuador</option>
                                                    <option value="EG">Egypt</option>
                                                    <option value="SV">El Salvador</option>
                                                    <option value="GQ">Equatorial Guinea</option>
                                                    <option value="ER">Eritrea</option>
                                                    <option value="EE">Estonia</option>
                                                    <option value="ET">Ethiopia</option>
                                                    <option value="FK">Falkland Islands (Malvinas)</option>
                                                    <option value="FO">Faroe Islands</option>
                                                    <option value="FJ">Fiji</option>
                                                    <option value="FI">Finland</option>
                                                    <option value="FR">France</option>
                                                    <option value="GF">French Guiana</option>
                                                    <option value="PF">French Polynesia</option>
                                                    <option value="GA">Gabon</option>
                                                    <option value="GM">Gambia</option>
                                                    <option value="GE">Georgia</option>
                                                    <option value="DE">Germany</option>
                                                    <option value="GH">Ghana</option>
                                                    <option value="GI">Gibraltar</option>
                                                    <option value="GR">Greece</option>
                                                    <option value="GL">Greenland</option>
                                                    <option value="GD">Grenada</option>
                                                    <option value="GP">Guadeloupe</option>
                                                    <option value="GU">Guam</option>
                                                    <option value="GT">Guatemala</option>
                                                    <option value="GN">Guinea</option>
                                                    <option value="GW">Guinea-Bissau</option>
                                                    <option value="GY">Guyana</option>
                                                    <option value="HT">Haiti</option>
                                                    <option value="HN">Honduras</option>
                                                    <option value="HK">Hong Kong</option>
                                                    <option value="HU">Hungary</option>
                                                    <option value="IS">Iceland</option>
                                                    <option value="IN">India</option>
                                                    <option value="ID">Indonesia</option>
                                                    <option value="IQ">Iraq</option>
                                                    <option value="IE">Ireland</option>
                                                    <option value="IL">Israel</option>
                                                    <option value="IT">Italy</option>
                                                    <option value="JM">Jamaica</option>
                                                    <option value="JP">Japan</option>
                                                    <option value="JO">Jordan</option>
                                                    <option value="KZ">Kazakhstan</option>
                                                    <option value="KE">Kenya</option>
                                                    <option value="KI">Kiribati</option>
                                                    <option value="KR">Korea, Republic of</option>
                                                    <option value="KW">Kuwait</option>
                                                    <option value="KG">Kyrgyzstan</option>
                                                    <option value="LV">Latvia</option>
                                                    <option value="LB">Lebanon</option>
                                                    <option value="LS">Lesotho</option>
                                                    <option value="LR">Liberia</option>
                                                    <option value="LY">Libyan Arab Jamahiriya</option>
                                                    <option value="LI">Liechtenstein</option>
                                                    <option value="LT">Lithuania</option>
                                                    <option value="LU">Luxembourg</option>
                                                    <option value="MO">Macau</option>
                                                    <option value="MG">Madagascar</option>
                                                    <option value="MW">Malawi</option>
                                                    <option value="MY">Malaysia</option>
                                                    <option value="MV">Maldives</option>
                                                    <option value="ML">Mali</option>
                                                    <option value="MT">Malta</option>
                                                    <option value="MH">Marshall Islands</option>
                                                    <option value="MQ">Martinique</option>
                                                    <option value="MR">Mauritania</option>
                                                    <option value="MU">Mauritius</option>
                                                    <option value="YT">Mayotte</option>
                                                    <option value="MX">Mexico</option>
                                                    <option value="MD">Moldova, Republic of</option>
                                                    <option value="MC">Monaco</option>
                                                    <option value="MN">Mongolia</option>
                                                    <option value="MS">Montserrat</option>
                                                    <option value="MA">Morocco</option>
                                                    <option value="MZ">Mozambique</option>
                                                    <option value="MM">Myanmar</option>
                                                    <option value="NA">Namibia</option>
                                                    <option value="NR">Nauru</option>
                                                    <option value="NP">Nepal</option>
                                                    <option value="NL">Netherlands</option>
                                                    <option value="AN">Netherlands Antilles</option>
                                                    <option value="NC">New Caledonia</option>
                                                    <option value="NZ">New Zealand</option>
                                                    <option value="NI">Nicaragua</option>
                                                    <option value="NE">Niger</option>
                                                    <option value="NG">Nigeria</option>
                                                    <option value="NU">Niue</option>
                                                    <option value="NF">Norfolk Island</option>
                                                    <option value="MP">Northern Mariana Islands</option>
                                                    <option value="NO">Norway</option>
                                                    <option value="OM">Oman</option>
                                                    <option value="PW">Palau</option>
                                                    <option value="PA">Panama</option>
                                                    <option value="PG">Papua New Guinea</option>
                                                    <option value="PY">Paraguay</option>
                                                    <option value="PE">Peru</option>
                                                    <option value="PH">Philippines</option>
                                                    <option value="PN">Pitcairn</option>
                                                    <option value="PL">Poland</option>
                                                    <option value="PT">Portugal</option>
                                                    <option value="PR">Puerto Rico</option>
                                                    <option value="QA">Qatar</option>
                                                    <option value="RE">Reunion</option>
                                                    <option value="RO">Romania</option>
                                                    <option value="RU">Russian Federation</option>
                                                    <option value="RW">Rwanda</option>
                                                    <option value="KN">Saint Kitts and Nevis</option>
                                                    <option value="LC">Saint LUCIA</option>
                                                    <option value="WS">Samoa</option>
                                                    <option value="SM">San Marino</option>
                                                    <option value="ST">Sao Tome and Principe</option>
                                                    <option value="SA">Saudi Arabia</option>
                                                    <option value="SN">Senegal</option>
                                                    <option value="SC">Seychelles</option>
                                                    <option value="SL">Sierra Leone</option>
                                                    <option value="SG">Singapore</option>
                                                    <option value="SK">Slovakia (Slovak Republic)</option>
                                                    <option value="SI">Slovenia</option>
                                                    <option value="SB">Solomon Islands</option>
                                                    <option value="SO">Somalia</option>
                                                    <option value="ZA">South Africa</option>
                                                    <option value="ES">Spain</option>
                                                    <option value="LK">Sri Lanka</option>
                                                    <option value="SH">St. Helena</option>
                                                    <option value="PM">St. Pierre and Miquelon</option>
                                                    <option value="SD">Sudan</option>
                                                    <option value="SR">Suriname</option>
                                                    <option value="SZ">Swaziland</option>
                                                    <option value="SE">Sweden</option>
                                                    <option value="CH">Switzerland</option>
                                                    <option value="SY">Syrian Arab Republic</option>
                                                    <option value="TW">Taiwan, Province of China</option>
                                                    <option value="TJ">Tajikistan</option>
                                                    <option value="TZ">Tanzania, United Republic of</option>
                                                    <option value="TH">Thailand</option>
                                                    <option value="TG">Togo</option>
                                                    <option value="TK">Tokelau</option>
                                                    <option value="TO">Tonga</option>
                                                    <option value="TT">Trinidad and Tobago</option>
                                                    <option value="TN">Tunisia</option>
                                                    <option value="TR">Turkey</option>
                                                    <option value="TM">Turkmenistan</option>
                                                    <option value="TC">Turks and Caicos Islands</option>
                                                    <option value="TV">Tuvalu</option>
                                                    <option value="UG">Uganda</option>
                                                    <option value="UA">Ukraine</option>
                                                    <option value="AE">United Arab Emirates</option>
                                                    <option value="GB">United Kingdom</option>
                                                    <option value="US">United States</option>
                                                    <option value="UY">Uruguay</option>
                                                    <option value="UZ">Uzbekistan</option>
                                                    <option value="VU">Vanuatu</option>
                                                    <option value="VE">Venezuela</option>
                                                    <option value="VN">Viet Nam</option>
                                                    <option value="VG">Virgin Islands (British)</option>
                                                    <option value="VI">Virgin Islands (U.S.)</option>
                                                    <option value="WF">Wallis and Futuna Islands</option>
                                                    <option value="EH">Western Sahara</option>
                                                    <option value="YE">Yemen</option>
                                                    <option value="ZM">Zambia</option>
                                                    <option value="ZW">Zimbabwe</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <div class="custom-control custom-checkbox">
                                                    <input type="checkbox" class="custom-control-input" id="customCheck2">
                                                    <label class="custom-control-label" for="customCheck2">Delivered to different address ?</label>
                                                </div>
                                            </div>

                                            <div class="form-group mt-3">
                                                <label for="example-textarea">Quick Order Notes:</label>
                                                <textarea class="form-control" id="example-textarea" rows="3" placeholder="Write some note.."></textarea>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="#!" class="btn btn-outline-secondary">
                                                Continue to Shopping
                                            </a>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="text-sm-right">
                                                <a href="#!" class="btn btn-danger text-sm-right mt-md-0 mt-2">
                                                    <i class="mdi mdi-truck-fast mr-1"></i> Proceed to Shipping </a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="shipping-information">
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-2">Saved Address</h5>
                                <p class="text-muted mb-0">Choose where you want to recived your product.</p>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="card border mb-0 shadow-none">
                                            <div class="card-body">
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="radiohome" name="customRadio" class="custom-control-input" checked>
                                                    <label class="custom-control-label font-weight-bold" for="radiohome">Home</label>
                                                </div>
                                                <br />
                                                <h6 class="mb-0">Josephin Villa</h6>
                                                <p class="mb-0 m-t-10">1065 Mandan Road, Columbia MO, Missouri. (123)-65202</p>
                                                <p class="mb-0">(1234) - 567891</p>
                                                <p class="mb-0"><a class="text-secondary" href="mailto:demo@sample.com" target="_top">demo@sample.com</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="card border mb-0 shadow-none">
                                            <div class="card-body">
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="radiooffice" name="customRadio" class="custom-control-input">
                                                    <label class="custom-control-label font-weight-bold" for="radiooffice">Office</label>
                                                </div>
                                                <br />
                                                <h6 class="mb-0">E-Croma Pvt Ltd.</h6>
                                                <p class="mb-0 m-t-10">3654 Rodies Road, Columbia MO, Missouri. (123)-65202</p>
                                                <p class="mb-0">(1234) - 567891</p>
                                                <p class="mb-0"><a class="text-secondary" href="mailto:demo@sample.com" target="_top">E-Croma@sample.com</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h5 class="mb-2">Add New Address</h5>
                                <p class="text-muted mb-0">Fill the form below in for your new address in wich we send you the order's invoice.</p>
                            </div>
                            <div class="card-body">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="new-first-name">First Name</label>
                                                <input class="form-control" type="text" placeholder="Enter your first name" id="new-first-name" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="new-last-name">Last Name</label>
                                                <input class="form-control" type="text" placeholder="Enter your last name" id="new-last-name" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="new-email-address"><span class="text-danger">*</span> Email Address</label>
                                                <input class="form-control" type="email" placeholder="Enter your email" id="new-email-address" />
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="new-phone"><span class="text-danger">*</span> Phone</label>
                                                <input class="form-control" type="text" placeholder="(+91) 9999 999 999" id="new-phone" />
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label for="new-address">Address</label>
                                                <input class="form-control" type="text" placeholder="Enter full address" id="new-address">
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="new-town-city">Town / City</label>
                                                <input class="form-control" type="text" placeholder="Enter your city name" id="new-town-city" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="new-state">State</label>
                                                <input class="form-control" type="text" placeholder="Enter your state" id="new-state" />
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="new-zip-postal">Zip / Postal Code</label>
                                                <input class="form-control" type="text" placeholder="Enter your zip code" id="new-zip-postal" />
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <label>Country</label>
                                                <select class="form-control">
                                                    <option value="0">Select Country</option>
                                                    <option value="AF">Afghanistan</option>
                                                    <option value="AL">Albania</option>
                                                    <option value="DZ">Algeria</option>
                                                    <option value="AS">American Samoa</option>
                                                    <option value="AD">Andorra</option>
                                                    <option value="AO">Angola</option>
                                                    <option value="AI">Anguilla</option>
                                                    <option value="AQ">Antarctica</option>
                                                    <option value="AR">Argentina</option>
                                                    <option value="AM">Armenia</option>
                                                    <option value="AW">Aruba</option>
                                                    <option value="AU">Australia</option>
                                                    <option value="AT">Austria</option>
                                                    <option value="AZ">Azerbaijan</option>
                                                    <option value="BS">Bahamas</option>
                                                    <option value="BH">Bahrain</option>
                                                    <option value="BD">Bangladesh</option>
                                                    <option value="BB">Barbados</option>
                                                    <option value="BY">Belarus</option>
                                                    <option value="BE">Belgium</option>
                                                    <option value="BZ">Belize</option>
                                                    <option value="BJ">Benin</option>
                                                    <option value="BM">Bermuda</option>
                                                    <option value="BT">Bhutan</option>
                                                    <option value="BO">Bolivia</option>
                                                    <option value="BW">Botswana</option>
                                                    <option value="BV">Bouvet Island</option>
                                                    <option value="BR">Brazil</option>
                                                    <option value="BN">Brunei Darussalam</option>
                                                    <option value="BG">Bulgaria</option>
                                                    <option value="BF">Burkina Faso</option>
                                                    <option value="BI">Burundi</option>
                                                    <option value="KH">Cambodia</option>
                                                    <option value="CM">Cameroon</option>
                                                    <option value="CA">Canada</option>
                                                    <option value="CV">Cape Verde</option>
                                                    <option value="KY">Cayman Islands</option>
                                                    <option value="CF">Central African Republic</option>
                                                    <option value="TD">Chad</option>
                                                    <option value="CL">Chile</option>
                                                    <option value="CN">China</option>
                                                    <option value="CX">Christmas Island</option>
                                                    <option value="CC">Cocos (Keeling) Islands</option>
                                                    <option value="CO">Colombia</option>
                                                    <option value="KM">Comoros</option>
                                                    <option value="CG">Congo</option>
                                                    <option value="CK">Cook Islands</option>
                                                    <option value="CR">Costa Rica</option>
                                                    <option value="CI">Cote d'Ivoire</option>
                                                    <option value="HR">Croatia (Hrvatska)</option>
                                                    <option value="CU">Cuba</option>
                                                    <option value="CY">Cyprus</option>
                                                    <option value="CZ">Czech Republic</option>
                                                    <option value="DK">Denmark</option>
                                                    <option value="DJ">Djibouti</option>
                                                    <option value="DM">Dominica</option>
                                                    <option value="DO">Dominican Republic</option>
                                                    <option value="EC">Ecuador</option>
                                                    <option value="EG">Egypt</option>
                                                    <option value="SV">El Salvador</option>
                                                    <option value="GQ">Equatorial Guinea</option>
                                                    <option value="ER">Eritrea</option>
                                                    <option value="EE">Estonia</option>
                                                    <option value="ET">Ethiopia</option>
                                                    <option value="FK">Falkland Islands (Malvinas)</option>
                                                    <option value="FO">Faroe Islands</option>
                                                    <option value="FJ">Fiji</option>
                                                    <option value="FI">Finland</option>
                                                    <option value="FR">France</option>
                                                    <option value="GF">French Guiana</option>
                                                    <option value="PF">French Polynesia</option>
                                                    <option value="GA">Gabon</option>
                                                    <option value="GM">Gambia</option>
                                                    <option value="GE">Georgia</option>
                                                    <option value="DE">Germany</option>
                                                    <option value="GH">Ghana</option>
                                                    <option value="GI">Gibraltar</option>
                                                    <option value="GR">Greece</option>
                                                    <option value="GL">Greenland</option>
                                                    <option value="GD">Grenada</option>
                                                    <option value="GP">Guadeloupe</option>
                                                    <option value="GU">Guam</option>
                                                    <option value="GT">Guatemala</option>
                                                    <option value="GN">Guinea</option>
                                                    <option value="GW">Guinea-Bissau</option>
                                                    <option value="GY">Guyana</option>
                                                    <option value="HT">Haiti</option>
                                                    <option value="HN">Honduras</option>
                                                    <option value="HK">Hong Kong</option>
                                                    <option value="HU">Hungary</option>
                                                    <option value="IS">Iceland</option>
                                                    <option value="IN">India</option>
                                                    <option value="ID">Indonesia</option>
                                                    <option value="IQ">Iraq</option>
                                                    <option value="IE">Ireland</option>
                                                    <option value="IL">Israel</option>
                                                    <option value="IT">Italy</option>
                                                    <option value="JM">Jamaica</option>
                                                    <option value="JP">Japan</option>
                                                    <option value="JO">Jordan</option>
                                                    <option value="KZ">Kazakhstan</option>
                                                    <option value="KE">Kenya</option>
                                                    <option value="KI">Kiribati</option>
                                                    <option value="KR">Korea, Republic of</option>
                                                    <option value="KW">Kuwait</option>
                                                    <option value="KG">Kyrgyzstan</option>
                                                    <option value="LV">Latvia</option>
                                                    <option value="LB">Lebanon</option>
                                                    <option value="LS">Lesotho</option>
                                                    <option value="LR">Liberia</option>
                                                    <option value="LY">Libyan Arab Jamahiriya</option>
                                                    <option value="LI">Liechtenstein</option>
                                                    <option value="LT">Lithuania</option>
                                                    <option value="LU">Luxembourg</option>
                                                    <option value="MO">Macau</option>
                                                    <option value="MG">Madagascar</option>
                                                    <option value="MW">Malawi</option>
                                                    <option value="MY">Malaysia</option>
                                                    <option value="MV">Maldives</option>
                                                    <option value="ML">Mali</option>
                                                    <option value="MT">Malta</option>
                                                    <option value="MH">Marshall Islands</option>
                                                    <option value="MQ">Martinique</option>
                                                    <option value="MR">Mauritania</option>
                                                    <option value="MU">Mauritius</option>
                                                    <option value="YT">Mayotte</option>
                                                    <option value="MX">Mexico</option>
                                                    <option value="MD">Moldova, Republic of</option>
                                                    <option value="MC">Monaco</option>
                                                    <option value="MN">Mongolia</option>
                                                    <option value="MS">Montserrat</option>
                                                    <option value="MA">Morocco</option>
                                                    <option value="MZ">Mozambique</option>
                                                    <option value="MM">Myanmar</option>
                                                    <option value="NA">Namibia</option>
                                                    <option value="NR">Nauru</option>
                                                    <option value="NP">Nepal</option>
                                                    <option value="NL">Netherlands</option>
                                                    <option value="AN">Netherlands Antilles</option>
                                                    <option value="NC">New Caledonia</option>
                                                    <option value="NZ">New Zealand</option>
                                                    <option value="NI">Nicaragua</option>
                                                    <option value="NE">Niger</option>
                                                    <option value="NG">Nigeria</option>
                                                    <option value="NU">Niue</option>
                                                    <option value="NF">Norfolk Island</option>
                                                    <option value="MP">Northern Mariana Islands</option>
                                                    <option value="NO">Norway</option>
                                                    <option value="OM">Oman</option>
                                                    <option value="PW">Palau</option>
                                                    <option value="PA">Panama</option>
                                                    <option value="PG">Papua New Guinea</option>
                                                    <option value="PY">Paraguay</option>
                                                    <option value="PE">Peru</option>
                                                    <option value="PH">Philippines</option>
                                                    <option value="PN">Pitcairn</option>
                                                    <option value="PL">Poland</option>
                                                    <option value="PT">Portugal</option>
                                                    <option value="PR">Puerto Rico</option>
                                                    <option value="QA">Qatar</option>
                                                    <option value="RE">Reunion</option>
                                                    <option value="RO">Romania</option>
                                                    <option value="RU">Russian Federation</option>
                                                    <option value="RW">Rwanda</option>
                                                    <option value="KN">Saint Kitts and Nevis</option>
                                                    <option value="LC">Saint LUCIA</option>
                                                    <option value="WS">Samoa</option>
                                                    <option value="SM">San Marino</option>
                                                    <option value="ST">Sao Tome and Principe</option>
                                                    <option value="SA">Saudi Arabia</option>
                                                    <option value="SN">Senegal</option>
                                                    <option value="SC">Seychelles</option>
                                                    <option value="SL">Sierra Leone</option>
                                                    <option value="SG">Singapore</option>
                                                    <option value="SK">Slovakia (Slovak Republic)</option>
                                                    <option value="SI">Slovenia</option>
                                                    <option value="SB">Solomon Islands</option>
                                                    <option value="SO">Somalia</option>
                                                    <option value="ZA">South Africa</option>
                                                    <option value="ES">Spain</option>
                                                    <option value="LK">Sri Lanka</option>
                                                    <option value="SH">St. Helena</option>
                                                    <option value="PM">St. Pierre and Miquelon</option>
                                                    <option value="SD">Sudan</option>
                                                    <option value="SR">Suriname</option>
                                                    <option value="SZ">Swaziland</option>
                                                    <option value="SE">Sweden</option>
                                                    <option value="CH">Switzerland</option>
                                                    <option value="SY">Syrian Arab Republic</option>
                                                    <option value="TW">Taiwan, Province of China</option>
                                                    <option value="TJ">Tajikistan</option>
                                                    <option value="TZ">Tanzania, United Republic of</option>
                                                    <option value="TH">Thailand</option>
                                                    <option value="TG">Togo</option>
                                                    <option value="TK">Tokelau</option>
                                                    <option value="TO">Tonga</option>
                                                    <option value="TT">Trinidad and Tobago</option>
                                                    <option value="TN">Tunisia</option>
                                                    <option value="TR">Turkey</option>
                                                    <option value="TM">Turkmenistan</option>
                                                    <option value="TC">Turks and Caicos Islands</option>
                                                    <option value="TV">Tuvalu</option>
                                                    <option value="UG">Uganda</option>
                                                    <option value="UA">Ukraine</option>
                                                    <option value="AE">United Arab Emirates</option>
                                                    <option value="GB">United Kingdom</option>
                                                    <option value="US">United States</option>
                                                    <option value="UY">Uruguay</option>
                                                    <option value="UZ">Uzbekistan</option>
                                                    <option value="VU">Vanuatu</option>
                                                    <option value="VE">Venezuela</option>
                                                    <option value="VN">Viet Nam</option>
                                                    <option value="VG">Virgin Islands (British)</option>
                                                    <option value="VI">Virgin Islands (U.S.)</option>
                                                    <option value="WF">Wallis and Futuna Islands</option>
                                                    <option value="EH">Western Sahara</option>
                                                    <option value="YE">Yemen</option>
                                                    <option value="ZM">Zambia</option>
                                                    <option value="ZW">Zimbabwe</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <h5 class="my-3">Shipping Method</h5>
                                            <div class="custom-control custom-radio custom-control-inline" data-toggle="tooltip" title="Estimated 5-7 days shipping (Duties and tax may be due upon delivery)">
                                                <input type="radio" id="shippingMethodRadio1" name="shippingOptions" class="custom-control-input" checked>
                                                <label class="custom-control-label font-weight-bold" for="shippingMethodRadio1">Standard Delivery - FREE</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline" data-toggle="tooltip" title="Estimated 1-2 days shipping (Duties and tax may be due upon delivery)">
                                                <input type="radio" id="shippingMethodRadio2" name="shippingOptions" class="custom-control-input">
                                                <label class="custom-control-label font-weight-bold" for="shippingMethodRadio2">Fast Delivery - $29</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4">
                                        <div class="col-sm-6">
                                            <a href="#!" class="btn btn-outline-secondary">
                                                Back to Shopping Cart
                                            </a>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="text-sm-right">
                                                <a href="#!" class="btn btn-danger text-sm-right mt-md-0 mt-2">
                                                    Continue to Payment
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane" id="payment-information">
                        <div class="card">
                            <div class="card mb-0 shadow-none">
                                <div class="card-header">
                                    <h5 class="mb-2">Payment Selection</h5>
                                    <p class="text-muted mb-0">Fill up given form for your payment details.</p>
                                </div>
                            </div>
                            <div class="accordion" id="accordionExample">
                                <div class="card mb-0 shadow-none border-top">
                                    <div class="card-header" id="headingOne">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="BillingPaypal" name="billingOptions" class="custom-control-input" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne" checked>
                                            <label class="custom-control-label font-weight-bold" for="BillingPaypal">Pay with Paypal</label>
                                        </div>
                                    </div>
                                    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                                        <div class="card-body bg-light">
                                            <div class="row">
                                                <div class="col-sm-8">
                                                    <p class="mb-0 pl-3 pt-1">You will be redirected to PayPal website to complete your purchase securely.</p>
                                                </div>
                                                <div class="col-sm-4 text-sm-right mt-3 mt-sm-0">
                                                    <img src="assets/images/product/paypal.png" class="hei-25" alt="payment-images">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mb-0 shadow-none border-top">
                                    <div class="card-header" id="headingTwo">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="BillingCard" name="billingOptions" class="custom-control-input collapsed" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                            <label class="custom-control-label font-weight-bold" for="BillingCard">Credit / Debit Card</label>
                                        </div>
                                    </div>
                                    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                                        <div class="card-body bg-light">
                                            <div class="row">
                                                <div class="col-sm-8">
                                                    <p class="mb-0 pl-3 pt-1">Safe money transfer using your bank account. We support Mastercard, Visa, Discover and Stripe.</p>
                                                </div>
                                                <div class="col-sm-4 text-sm-right mt-3 mt-sm-0">
                                                    <img src="assets/images/product/card.png" height="24" alt="payment-images">
                                                </div>
                                            </div>
                                            <div class="row mt-4">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label for="card-number">Card Number</label>
                                                        <input type="text" id="card-number" class="form-control bg-transparent" data-toggle="input-mask" data-mask-format="0000 0000 0000 0000" placeholder="4242 4242 4242 4242">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label for="card-name-on">Name on card</label>
                                                        <input type="text" id="card-name-on" class="form-control bg-transparent" placeholder="Master Shreyu">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label for="card-expiry-date">Expiry date</label>
                                                        <input type="text" id="card-expiry-date" class="form-control bg-transparent" data-toggle="input-mask" data-mask-format="00/00" placeholder="MM/YY">
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label for="card-cvv">CVV code</label>
                                                        <input type="text" id="card-cvv" class="form-control bg-transparent" data-toggle="input-mask" data-mask-format="000" placeholder="012">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mb-0 shadow-none border-top">
                                    <div class="card-header" id="headingThree">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="BillingOptRadio3" name="billingOptions" class="custom-control-input collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                            <label class="custom-control-label font-weight-bold" for="BillingOptRadio3">Pay with CC Avenue</label>
                                        </div>
                                    </div>
                                    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                                        <div class="card-body bg-light">
                                            <div class="row">
                                                <div class="col-sm-8">
                                                    <p class="mb-0 pl-3 pt-1">You will be redirected to CC Avenue website to complete your purchase securely.</p>
                                                </div>
                                                <div class="col-sm-4 text-sm-right mt-3 mt-sm-0">
                                                    <img src="assets/images/product/cc.png" height="30" alt="payment-images">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mb-0 shadow-none border-top">
                                    <div class="card-header" id="headingfour">
                                        <div class="custom-control custom-radio">
                                            <input type="radio" id="BillingOptRadio4" name="billingOptions" class="custom-control-input collapsed" data-toggle="collapse" data-target="#collapsefour" aria-expanded="false" aria-controls="collapsefour">
                                            <label class="custom-control-label font-weight-bold" for="BillingOptRadio4">Cash on Delivery</label>
                                        </div>
                                    </div>
                                    <div id="collapsefour" class="collapse" aria-labelledby="headingfour" data-parent="#accordionExample">
                                        <div class="card-body bg-light">
                                            <div class="row">
                                                <div class="col-sm-8">
                                                    <p class="mb-0 pl-3 pt-1">Pay with cash when your order is delivered.</p>
                                                </div>
                                                <div class="col-sm-4 text-sm-right mt-3 mt-sm-0">
                                                    <img src="assets/images/product/cash.png" height="22" alt="payment-images">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card mb-0 shadow-none border-top">
                                    <div class="card-header">
                                        <div class="row justify-content-between">
                                            <div class="col">
                                                <div class="custom-control custom-radio">
                                                    <input type="radio" id="rddis" name="billingOptions" class="custom-control-input" disabled>
                                                    <label class="custom-control-label font-weight-bold" for="rddis">EMI ( Easy Installments )</label>
                                                </div>
                                            </div>
                                            <div class="col text-right">
                                                <a href="#!" class="text-muted">
                                                    Not Applicable
                                                    <i class="feather icon-help-circle" data-toggle="tooltip" title="You are not allow to use this option"></i>
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card mb-0 shadow-none border-top">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <a href="#!" class="btn btn-outline-secondary">
                                                Back to Shopping Cart
                                            </a>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="text-sm-right">
                                                <a href="#!" class="btn btn-danger text-sm-right mt-md-0 mt-2">
                                                    Complete Order
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        <h5>Order Summary</h5>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item py-0">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img src="assets/images/product/prod-1.jpg" alt="contact-img" title="contact-img" class="rounded mr-2" height="48" />
                                                <p class="m-0 d-inline-block align-middle">
                                                    <a href="#!" class="text-body font-weight-semibold">Rolling Chair</a>
                                                    <br>
                                                    <small>5 x $148.66</small>
                                                </p>
                                            </td>
                                            <td class="text-right">
                                                $743.00
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                        <li class="list-group-item py-0">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img src="assets/images/product/prod-2.jpg" alt="contact-img" title="contact-img" class="rounded mr-2" height="48" />
                                                <p class="m-0 d-inline-block align-middle">
                                                    <a href="#!" class="text-body font-weight-semibold">Dining Chair</a>
                                                    <br>
                                                    <small>2 x $99.00</small>
                                                </p>
                                            </td>
                                            <td class="text-right">
                                                $198.00
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                        <li class="list-group-item py-0">
                            <div class="table-responsive">
                                <table class="table table-borderless mb-0">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img src="assets/images/product/prod-3.jpg" alt="contact-img" title="contact-img" class="rounded mr-2" height="48" />
                                                <p class="m-0 d-inline-block align-middle">
                                                    <a href="#!" class="text-body font-weight-semibold">Marvel T-shirts</a>
                                                    <br>
                                                    <small>1 x $129.99</small>
                                                </p>
                                            </td>
                                            <td class="text-right">
                                                $129.00
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </li>
                    </ul>
                    <div class="card-body py-2">
                        <div class="table-responsive">
                            <table class="table table-borderless mb-0 w-auto table-sm float-right text-right">
                                <tbody>
                                    <tr>
                                        <td>
                                            <h6 class="m-0">Sub Total:</h6>
                                        </td>
                                        <td>
                                            $1070
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <h6 class="m-0">Shipping:</h6>
                                        </td>
                                        <td>
                                            FREE
                                        </td>
                                    </tr>
                                    <tr class="border-top">
                                        <td>
                                            <h5 class="m-0">Total:</h5>
                                        </td>
                                        <td class="font-weight-semibold">
                                            $1070
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <script src="Css/datatable/js/vendor-all.min.js" type="text/javascript"></script>
        <script src="Css/datatable/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Css/datatable/js/ripple.js" type="text/javascript"></script>
        <script src="Css/datatable/js/pcoded.min.js" type="text/javascript"></script>
        
        
        <script src="Css/datatable/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="Css/datatable/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
        
        <script src="Css/datatable/js/apexcharts.min.js" type="text/javascript"></script>
    </body>
</html>
