.class public Lcom/tencent/qqpim/utils/MobileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_AREA_CODE:Ljava/lang/String; = "+86"

.field public static final FUNCTION_NAME_CHECK_VERIFY_CODE:Ljava/lang/String; = "checkVerifyCode"

.field public static final FUNCTION_NAME_GET_STATUS:Ljava/lang/String; = "getRegStatus"

.field public static final FUNCTION_NAME_MOBILE_LOGIN:Ljava/lang/String; = "mobileLogin"

.field public static final FUNCTION_NAME_REGISTER:Ljava/lang/String; = "validateMobile"

.field public static final MOBILE_LOGIN_ACCOUNT_KEY:Ljava/lang/String; = "mobile_login_account_key"

.field public static final MOBILE_LOGIN_AREACODE_KEY:Ljava/lang/String; = "mobile_login_areacode_key"

.field public static final MOBILE_LOGIN_PWD_KEY:Ljava/lang/String; = "mobile_login_pwd_key"

.field public static final MSG_PROCCESS_Cancel:I = 0x68

.field public static final MSG_PROCCESS_DOWN_MODE_REQUEST_SUCCESS:I = 0x6a

.field public static final MSG_PROCCESS_Failed:I = 0x67

.field public static final MSG_PROCCESS_RGISTER_FAILD_SMS:I = 0x69

.field public static final MSG_PROCCESS_SEND_SMS_ERR:I = 0x6f

.field public static final MSG_PROCCESS_SUCCESS:I = 0x65

.field public static final MSG_PROCCESS_SUPPORT_DOWN:I = 0x6c

.field public static final MSG_PROCCESS_SUPPORT_NOE:I = 0x6d

.field public static final MSG_PROCCESS_SUPPORT_UP:I = 0x6b

.field public static final MSG_PROCCESS_TIMEOUT:I = 0x66

.field public static final MSG_PROCCESS_TIME_INTERVAL:I = 0x6e

.field public static final PARAM_IN:Ljava/lang/String; = "cinfo"

.field public static final PARAM_OUT:Ljava/lang/String; = "sinfo"

.field public static final PLATFORM_ID:B = 0x1t

.field public static final REQUEST_MODE_DOWN:B = 0x2t

.field public static final REQUEST_MODE_UP:B = 0x1t

.field public static final RETCODE_SMS_SENED_KEY:Ljava/lang/String; = "retcode_sms_sened_key"

.field public static final SERVER_NAME:Ljava/lang/String; = "mobile"

.field public static final SUPPORT_MODE_KEY:Ljava/lang/String; = "support_mode_key"

.field public static mAreaCode:Ljava/lang/String;

.field public static mMobileNo:Ljava/lang/String;

.field public static mPWD:Ljava/lang/String;

.field private static needLoginAfterRegister:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mAreaCode:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mMobileNo:Ljava/lang/String;

    .line 58
    const-string v0, ""

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mPWD:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qqpim/utils/MobileUtil;->needLoginAfterRegister:Z

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InputStreamToBytes(Ljava/io/InputStream;)[B
    .locals 3
    .parameter

    .prologue
    .line 118
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 121
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 124
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 125
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 126
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 131
    :goto_1
    return-object v0

    .line 122
    :cond_0
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static clearAccountAndPWD()V
    .locals 1

    .prologue
    .line 165
    const-string v0, ""

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mAreaCode:Ljava/lang/String;

    .line 166
    const-string v0, ""

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mMobileNo:Ljava/lang/String;

    .line 167
    const-string v0, ""

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mPWD:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public static getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    sget-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mMobileNo:Ljava/lang/String;

    return-object v0
.end method

.method public static getAreaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mAreaCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getHeader(Landroid/content/Context;)LQQPIM/ReqHeader;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 97
    new-instance v0, LQQPIM/ReqHeader;

    invoke-direct {v0}, LQQPIM/ReqHeader;-><init>()V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LQQPIM/ReqHeader;->setPlatformid(B)V

    .line 99
    invoke-static {p0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/ReqHeader;->setLc(Ljava/lang/String;)V

    .line 100
    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/ReqHeader;->setImei(Ljava/lang/String;)V

    .line 101
    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMSI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LQQPIM/ReqHeader;->setImsi(Ljava/lang/String;)V

    .line 102
    invoke-static {v3}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v1

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->VERSION:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v1, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, LQQPIM/ReqHeader;->setVersion(Ljava/lang/String;)V

    .line 105
    const-string v1, ""

    invoke-virtual {v0, v1}, LQQPIM/ReqHeader;->setMobileno(Ljava/lang/String;)V

    .line 107
    return-object v0
.end method

.method public static getHeader(Ljava/lang/String;Landroid/content/Context;)LQQPIM/ReqHeader;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    if-nez p0, :cond_0

    .line 88
    :goto_0
    return-object v0

    .line 77
    :cond_0
    new-instance v1, LQQPIM/ReqHeader;

    invoke-direct {v1}, LQQPIM/ReqHeader;-><init>()V

    .line 78
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LQQPIM/ReqHeader;->setPlatformid(B)V

    .line 79
    invoke-static {p1}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v2

    invoke-interface {v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getLC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/ReqHeader;->setLc(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMEI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/ReqHeader;->setImei(Ljava/lang/String;)V

    .line 81
    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v2

    sget-object v3, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->IMSI:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v2, v3}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, LQQPIM/ReqHeader;->setImsi(Ljava/lang/String;)V

    .line 82
    invoke-static {v0}, Lcom/tencent/qqpim/dao/ConfigDao;->getInstance(Landroid/content/Context;)Lcom/tencent/qqpim/interfaces/IConfigDao;

    move-result-object v0

    sget-object v2, Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;->VERSION:Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;

    invoke-interface {v0, v2}, Lcom/tencent/qqpim/interfaces/IConfigDao;->getStringValue(Lcom/tencent/qqpim/interfaces/IConfigDao$ConfigValueTag;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setVersion(Ljava/lang/String;)V

    .line 85
    const-string v0, ","

    const-string v2, ""

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {v1, v0}, LQQPIM/ReqHeader;->setMobileno(Ljava/lang/String;)V

    move-object v0, v1

    .line 88
    goto :goto_0
.end method

.method public static getPWD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mPWD:Ljava/lang/String;

    return-object v0
.end method

.method public static getUniPacketFromInputStream(Ljava/io/InputStream;)Lcom/a/a/a/d;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {p0}, Lcom/tencent/qqpim/utils/MobileUtil;->InputStreamToBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 144
    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-object v0

    .line 149
    :cond_0
    const-string v2, "DFG#$%^#%$RGHR(&*M<><"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/qqpim/utils/XxteaCryptor;->decrypt([B[B)[B

    move-result-object v2

    .line 152
    new-instance v1, Lcom/a/a/a/d;

    invoke-direct {v1}, Lcom/a/a/a/d;-><init>()V

    .line 153
    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Lcom/a/a/a/d;->v(Ljava/lang/String;)V

    .line 155
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/a/a/a/d;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 161
    goto :goto_0

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static isNeedLoginAfterRegister()Z
    .locals 1

    .prologue
    .line 215
    sget-boolean v0, Lcom/tencent/qqpim/utils/MobileUtil;->needLoginAfterRegister:Z

    return v0
.end method

.method public static loginMobileAfterRegister(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qqpim/utils/MobileUtil;->needLoginAfterRegister:Z

    goto :goto_0
.end method

.method public static setAccount(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 184
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mMobileNo:Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mMobileNo:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public static setAreaCode(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mAreaCode:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mAreaCode:Ljava/lang/String;

    .line 177
    return-void
.end method

.method public static setNeedLoginAfterRegister(Z)V
    .locals 0
    .parameter

    .prologue
    .line 211
    sput-boolean p0, Lcom/tencent/qqpim/utils/MobileUtil;->needLoginAfterRegister:Z

    .line 212
    return-void
.end method

.method public static setPWD(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mPWD:Ljava/lang/String;

    .line 194
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tencent/qqpim/utils/MobileUtil;->mPWD:Ljava/lang/String;

    .line 195
    return-void
.end method
