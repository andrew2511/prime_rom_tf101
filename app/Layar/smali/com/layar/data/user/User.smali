.class public Lcom/layar/data/user/User;
.super Ljava/lang/Object;
.source "User.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private devSettings:Z

.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private joined:Ljava/util/Date;

.field private keepNotified:Z

.field private lastLogin:Ljava/util/Date;

.field private lastName:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phoneId:Ljava/lang/String;

.field private socials:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private staff:Z

.field private state:Lcom/layar/data/user/UserState;

.field private suspended:Z

.field private username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layar."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/layar/data/user/User;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/data/user/User;->TAG:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    sget-object v0, Lcom/layar/data/user/UserState;->NOT_ACTIVATED:Lcom/layar/data/user/UserState;

    iput-object v0, p0, Lcom/layar/data/user/User;->state:Lcom/layar/data/user/UserState;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/data/user/User;->devSettings:Z

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/layar/data/user/User;->socials:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method public static asJSON(Lcom/layar/data/user/User;)Ljava/lang/String;
    .locals 7
    .parameter "user"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 104
    if-nez p0, :cond_0

    const/4 v4, 0x0

    .line 132
    :goto_0
    return-object v4

    .line 106
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v1, json:Lorg/json/JSONObject;
    const-string v4, "username"

    iget-object v5, p0, Lcom/layar/data/user/User;->username:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    iget-object v4, p0, Lcom/layar/data/user/User;->firstName:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, "first_name"

    iget-object v5, p0, Lcom/layar/data/user/User;->firstName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/layar/data/user/User;->lastName:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, "last_name"

    iget-object v5, p0, Lcom/layar/data/user/User;->lastName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_2
    const-string v4, "userState"

    iget-object v5, p0, Lcom/layar/data/user/User;->state:Lcom/layar/data/user/UserState;

    sget-object v6, Lcom/layar/data/user/UserState;->ACTIVATED:Lcom/layar/data/user/UserState;

    if-ne v5, v6, :cond_8

    const-string v5, "activated"

    :goto_1
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v4, "countryCode"

    iget-object v5, p0, Lcom/layar/data/user/User;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v4, "phoneId"

    iget-object v5, p0, Lcom/layar/data/user/User;->phoneId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    iget-object v4, p0, Lcom/layar/data/user/User;->email:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, "email"

    iget-object v5, p0, Lcom/layar/data/user/User;->email:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_3
    const-string v4, "keep_notified"

    iget-boolean v5, p0, Lcom/layar/data/user/User;->keepNotified:Z

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 115
    const-string v4, "suspended"

    iget-boolean v5, p0, Lcom/layar/data/user/User;->suspended:Z

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    const-string v4, "dev_settings"

    iget-boolean v5, p0, Lcom/layar/data/user/User;->devSettings:Z

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 118
    iget-object v4, p0, Lcom/layar/data/user/User;->accessToken:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 119
    const-string v4, "access_token"

    iget-object v5, p0, Lcom/layar/data/user/User;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, format:Ljava/text/SimpleDateFormat;
    iget-object v4, p0, Lcom/layar/data/user/User;->lastLogin:Ljava/util/Date;

    if-eqz v4, :cond_5

    const-string v4, "last_login"

    iget-object v5, p0, Lcom/layar/data/user/User;->lastLogin:Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_5
    iget-object v4, p0, Lcom/layar/data/user/User;->joined:Ljava/util/Date;

    if-eqz v4, :cond_6

    const-string v4, "date_joined"

    iget-object v5, p0, Lcom/layar/data/user/User;->joined:Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_6
    iget-object v4, p0, Lcom/layar/data/user/User;->socials:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/layar/data/user/User;->socials:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 126
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 127
    .local v3, socials:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/layar/data/user/User;->socials:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_9

    .line 129
    const-string v4, "socials"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .end local v3           #socials:Lorg/json/JSONArray;
    :cond_7
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 110
    .end local v0           #format:Ljava/text/SimpleDateFormat;
    :cond_8
    const-string v5, "not_activated"

    goto/16 :goto_1

    .line 127
    .restart local v0       #format:Ljava/text/SimpleDateFormat;
    .restart local v3       #socials:Lorg/json/JSONArray;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, social:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/layar/data/user/User;
    .locals 13
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 44
    new-instance v9, Lcom/layar/data/user/User;

    invoke-direct {v9}, Lcom/layar/data/user/User;-><init>()V

    .line 45
    .local v9, user:Lcom/layar/data/user/User;
    const-string v10, "username"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setUsername(Ljava/lang/String;)V

    .line 46
    const-string v10, "first_name"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 47
    const-string v10, "first_name"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, firstName:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 49
    invoke-virtual {v9, v2}, Lcom/layar/data/user/User;->setFirstName(Ljava/lang/String;)V

    .line 51
    .end local v2           #firstName:Ljava/lang/String;
    :cond_0
    const-string v10, "last_name"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 52
    const-string v10, "last_name"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 53
    .local v5, lastName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 54
    invoke-virtual {v9, v5}, Lcom/layar/data/user/User;->setLastName(Ljava/lang/String;)V

    .line 56
    .end local v5           #lastName:Ljava/lang/String;
    :cond_1
    const-string v10, "userState"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/layar/data/user/UserState;->parse(Ljava/lang/String;)Lcom/layar/data/user/UserState;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setState(Lcom/layar/data/user/UserState;)V

    .line 57
    const-string v10, "countryCode"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setCountryCode(Ljava/lang/String;)V

    .line 58
    const-string v10, "phoneId"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setPhoneId(Ljava/lang/String;)V

    .line 59
    const-string v10, "email"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 60
    const-string v10, "email"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, email:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 62
    invoke-virtual {v9, v1}, Lcom/layar/data/user/User;->setEmail(Ljava/lang/String;)V

    .line 64
    .end local v1           #email:Ljava/lang/String;
    :cond_2
    const-string v10, "keep_notified"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 65
    const-string v10, "keep_notified"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setKeepNotified(Z)V

    .line 67
    :cond_3
    const-string v10, "staff"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setStaffAccount(Z)V

    .line 69
    const-string v10, "suspended"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 70
    const-string v10, "suspended"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setSuspended(Z)V

    .line 72
    :cond_4
    const-string v10, "dev_settings"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 73
    const-string v10, "dev_settings"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setDevSettings(Z)V

    .line 76
    :cond_5
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 77
    .local v3, format:Ljava/text/SimpleDateFormat;
    const-string v10, "last_login"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 78
    const-string v10, "last_login"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setLastLogin(Ljava/util/Date;)V

    .line 80
    :cond_6
    const-string v10, "date_joined"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 81
    const-string v10, "date_joined"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setJoined(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v3           #format:Ljava/text/SimpleDateFormat;
    :cond_7
    :goto_0
    const-string v10, "access_token"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 88
    invoke-virtual {v9, v12}, Lcom/layar/data/user/User;->setAccessToken(Ljava/lang/String;)V

    .line 92
    :goto_1
    const-string v10, "sharing"

    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 93
    .local v7, socials:Lorg/json/JSONArray;
    if-eqz v7, :cond_8

    .line 94
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 95
    .local v8, socialsCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-lt v4, v8, :cond_a

    .line 100
    .end local v4           #i:I
    .end local v8           #socialsCount:I
    :cond_8
    return-object v9

    .line 83
    .end local v7           #socials:Lorg/json/JSONArray;
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 84
    .local v0, e:Ljava/text/ParseException;
    sget-object v10, Lcom/layar/data/user/User;->TAG:Ljava/lang/String;

    const-string v11, "There was a problem parsing a date field in the user json object"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 90
    .end local v0           #e:Ljava/text/ParseException;
    :cond_9
    const-string v10, "access_token"

    invoke-virtual {p0, v10, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/layar/data/user/User;->setAccessToken(Ljava/lang/String;)V

    goto :goto_1

    .line 96
    .restart local v4       #i:I
    .restart local v7       #socials:Lorg/json/JSONArray;
    .restart local v8       #socialsCount:I
    :cond_a
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, social:Ljava/lang/String;
    iget-object v10, v9, Lcom/layar/data/user/User;->socials:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/layar/data/user/User;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/layar/data/user/User;->countryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/layar/data/user/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/layar/data/user/User;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getJoined()Ljava/util/Date;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/layar/data/user/User;->joined:Ljava/util/Date;

    return-object v0
.end method

.method public getLastLogin()Ljava/util/Date;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/layar/data/user/User;->lastLogin:Ljava/util/Date;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/layar/data/user/User;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/layar/data/user/User;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/layar/data/user/User;->phoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetworks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/layar/data/user/User;->socials:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getState()Lcom/layar/data/user/UserState;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/layar/data/user/User;->state:Lcom/layar/data/user/UserState;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/layar/data/user/User;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isDevSettings()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/layar/data/user/User;->devSettings:Z

    return v0
.end method

.method public isKeepNotified()Z
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/layar/data/user/User;->keepNotified:Z

    return v0
.end method

.method public isStaffAccount()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/layar/data/user/User;->staff:Z

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/layar/data/user/User;->suspended:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .parameter "accessToken"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/layar/data/user/User;->accessToken:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setCountryCode(Ljava/lang/String;)V
    .locals 0
    .parameter "countryCode"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/layar/data/user/User;->countryCode:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setDevSettings(Z)V
    .locals 0
    .parameter "devSettings"

    .prologue
    .line 236
    iput-boolean p1, p0, Lcom/layar/data/user/User;->devSettings:Z

    .line 237
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .parameter "email"

    .prologue
    .line 188
    iput-object p1, p0, Lcom/layar/data/user/User;->email:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .parameter "firstName"

    .prologue
    .line 156
    iput-object p1, p0, Lcom/layar/data/user/User;->firstName:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setJoined(Ljava/util/Date;)V
    .locals 0
    .parameter "joined"

    .prologue
    .line 204
    iput-object p1, p0, Lcom/layar/data/user/User;->joined:Ljava/util/Date;

    .line 205
    return-void
.end method

.method public setKeepNotified(Z)V
    .locals 0
    .parameter "keepNotified"

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/layar/data/user/User;->keepNotified:Z

    .line 221
    return-void
.end method

.method public setLastLogin(Ljava/util/Date;)V
    .locals 0
    .parameter "lastLogin"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/layar/data/user/User;->lastLogin:Ljava/util/Date;

    .line 197
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .parameter "lastName"

    .prologue
    .line 164
    iput-object p1, p0, Lcom/layar/data/user/User;->lastName:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/layar/data/user/User;->password:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setPhoneId(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneId"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/layar/data/user/User;->phoneId:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public setStaffAccount(Z)V
    .locals 0
    .parameter "staff"

    .prologue
    .line 244
    iput-boolean p1, p0, Lcom/layar/data/user/User;->staff:Z

    .line 245
    return-void
.end method

.method public setState(Lcom/layar/data/user/UserState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/layar/data/user/User;->state:Lcom/layar/data/user/UserState;

    .line 173
    return-void
.end method

.method public setSuspended(Z)V
    .locals 0
    .parameter "suspended"

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/layar/data/user/User;->suspended:Z

    .line 229
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/layar/data/user/User;->username:Ljava/lang/String;

    .line 141
    return-void
.end method
