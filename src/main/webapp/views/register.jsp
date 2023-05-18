<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
    let register_form = {
        init:function(){
            $('#register_btn').addClass('disabled');
            $('#register_btn').click(function(){
                register_form.send();
            });
            $('#name').keyup(function(){
                var id = $('#id').val();
                var pwd = $('#pwd').val();
                var name = $('#name').val();
                if(id != '' && pwd != '' && name != ''){
                    $('#register_btn').removeClass('disabled');
                }

            })
            $('#id').keyup(function(){
                var txt_id = $(this).val();
                if(txt_id.length<=3){
                    return;
                }
                $.ajax({
                    url:'/checkid',
                    data:{'id':txt_id},
                    //success일때는 콤마, 세미콜론 둘 다 없다 주의하기!
                    success:function(result){
                        if(result==0){
                            $('#check_id').text('');
                            $('#pwd').focus();
                        }else{
                            $('#check_id').text('사용불가능합니다.');
                        }
                    }
                });
            });
        },
        send:function(){
            var id = $('#id').val();
            var pwd = $('#pwd').val();
            var name = $('#name').val();
            if(id.length<=3){
                $('#check_id').text('4자리 이상이어야 합니다.');
                $('#id').focus();
                return;
            }
            if(pwd == ''){
                $('#pwd').focus();
                return;
            }
            if(name == ''){
                $('#name').focus();
                return;
            }
            $('#register_form').attr({
                'action':'/registerimpl',
                'method':'post'
            });
            $('#register_form').submit();
        }
    };
    $(function(){
        register_form.init();
    });
</script>

<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="bread"><span><a href="/">Home</a></span> / <span><a href="/login">Login</a></span></p>
            </div>
        </div>
    </div>
</div>


<div id="colorlib-contact">
    <div class="container">
        <div class="row">
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="contact-wrap">
                    <h3 style="text-align: center">가입을 환영합니다</h3>
                    <h3>Register</h3>
                    <form id="register_form" class="contact-form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" id="name" name="name" class="form-control" placeholder="Your name">
                                </div>
                            </div>

                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="id">ID</label>
                                    <input type="text" id="id" name="id" class="form-control" placeholder="Your ID">
                                </div>
                            </div>

                            <div class="col-sm-10">
                                <span id="check_id" class="bg-info"></span>
                            </div>

                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <label for="pwd">Password</label>
                                    <input type="password" id="pwd" name="pwd" class="form-control" placeholder="Your Password">
                                </div>
                            </div>
                            <div class="w-100"></div>
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <button id="register_btn" type="button" class="btn btn-primary">REGISTER</button>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
