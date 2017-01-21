<!-- Start main-content -->
<div class="main-content">

    <!-- Divider: Contact -->
    <section class="divider">
        <div class="container pt-0">
            <div class="row mb-60 bg-deep">
                <div class="col-sm-12 col-md-4">
                    <div class="contact-info text-center pt-60 pb-60 border-right">
                        <i class="fa fa-phone font-36 mb-10 text-theme-colored"></i>
                        <h4>Позвонить нам</h4>
                        <h6 class="text-gray">
                            <a href="tel:{include file="inc/contacts/phone.tpl"}">{include file="inc/contacts/phone.tpl"}</a>
                        </h6>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="contact-info text-center  pt-60 pb-60 border-right">
                        <i class="fa fa-map-marker font-36 mb-10 text-theme-colored"></i>
                        <h4>Наш адрес</h4>
                        <h6 class="text-gray">{include file="inc/contacts/address.tpl"}</h6>
                    </div>
                </div>
                <div class="col-sm-12 col-md-4">
                    <div class="contact-info text-center  pt-60 pb-60">
                        <i class="fa fa-envelope font-36 mb-10 text-theme-colored"></i>
                        <h4>Email</h4>
                        <h6 class="text-gray">{include file="inc/contacts/email.tpl"}</h6>
                    </div>
                </div>
            </div>
            <div class="row pt-10">
                <div class="col-md-5">
                    <h4 class="mt-0 mb-30 line-bottom">Адрес:</h4>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1120.2405189975584!2d37.41023065834635!3d55.83696650133806!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b547c0951cd479%3A0x5035ce83bf61145b!2z0J_QvtGF0L7QtNC90YvQuSDQv9GALdC0LCA1LCDQnNC-0YHQutCy0LAsIDEyNTQ3Ng!5e0!3m2!1sru!2sru!4v1481622559306"
                            width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
                <div class="col-md-7">
                    <!-- Contact Form -->
                    {include file="inc/forms/feedback_adult_contacts.tpl"}
                </div>
            </div>
        </div>
    </section>
</div>
<!-- end main-content -->
