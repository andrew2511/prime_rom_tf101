.class public Lcom/asus/vibe2/Vibe;
.super Ljava/lang/Object;
.source "Vibe.java"


# static fields
.field public static final DEBUG:Z

.field public static DUMMY_REGION:Ljava/lang/String;

.field public static final MEM_DEBUG:Z

.field private static context:Landroid/content/Context;

.field private static locale:Ljava/lang/String;

.field private static md5password:Ljava/lang/String;

.field private static region:Ljava/lang/String;

.field private static serviceGatewayAddress:Ljava/lang/String;

.field public static useVibeTestPremiumAddress:Z

.field private static username:Ljava/lang/String;

.field private static vibeFreeAddress:Ljava/lang/String;

.field private static vibeFreeDefaultToken:Ljava/lang/String;

.field private static vibeFreeUserToken:Ljava/lang/String;

.field private static vibeMainCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Main;",
            ">;"
        }
    .end annotation
.end field

.field private static vibePremiumAuthKey:Ljava/lang/String;

.field private static vibePremiumHeaderMode:Z

.field private static vibePremiumOrderProcessUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    .line 34
    const-string v0, "com.asus.vibe.memdebug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/asus/vibe2/Vibe;->MEM_DEBUG:Z

    .line 46
    const-string v0, ""

    sput-object v0, Lcom/asus/vibe2/Vibe;->DUMMY_REGION:Ljava/lang/String;

    .line 47
    sput-boolean v1, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    .line 51
    sput-object v2, Lcom/asus/vibe2/Vibe;->locale:Ljava/lang/String;

    .line 52
    sput-object v2, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    .line 72
    sput-object v2, Lcom/asus/vibe2/Vibe;->vibeMainCategoryList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static clearVibeMainCategoryList()V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/vibe2/Vibe;->vibeMainCategoryList:Ljava/util/ArrayList;

    .line 233
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/asus/vibe2/Vibe;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    sget-object v1, Lcom/asus/vibe2/Vibe;->locale:Ljava/lang/String;

    .line 84
    .local v1, oldLocale:Ljava/lang/String;
    const/4 v0, 0x0

    .line 85
    .local v0, newLocale:Ljava/lang/String;
    sget-boolean v2, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "com.asus.vibe.locale"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_1
    sput-object v0, Lcom/asus/vibe2/Vibe;->locale:Ljava/lang/String;

    .line 92
    sget-boolean v2, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "ASUS@Vibe"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "locale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/asus/vibe2/Vibe;->locale:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 94
    sget-object v2, Lcom/asus/vibe2/Vibe;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.asus.vibe.action.APP_INFO_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    :cond_3
    sget-object v2, Lcom/asus/vibe2/Vibe;->locale:Ljava/lang/String;

    return-object v2
.end method

.method public static getMd5password()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/asus/vibe2/Vibe;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "dummypwd"

    invoke-static {v0}, Lcom/asus/vibe2/Utils_Vibe;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/asus/vibe2/Vibe;->md5password:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/asus/vibe2/Vibe;->DUMMY_REGION:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegion: dummy region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_0
    sget-object v0, Lcom/asus/vibe2/Vibe;->DUMMY_REGION:Ljava/lang/String;

    .line 112
    :goto_0
    return-object v0

    .line 107
    :cond_1
    sget-object v0, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegion: default region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "ASUS@Vibe"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegion: region="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_4
    sget-object v0, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getServiceGatewayAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/asus/vibe2/Vibe;->serviceGatewayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/asus/vibe2/Vibe;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const-string v0, "dummyUser"

    .line 135
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/asus/vibe2/Vibe;->username:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVibeFreeAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    sget-object v0, Lcom/asus/vibe2/Vibe;->vibeFreeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public static getVibeFreeToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/asus/vibe2/Vibe;->vibeFreeUserToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/asus/vibe2/Vibe;->vibeFreeDefaultToken:Ljava/lang/String;

    .line 188
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/asus/vibe2/Vibe;->vibeFreeUserToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVibeMainCategoryList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Main;",
            ">;"
        }
    .end annotation

    .prologue
    .line 224
    sget-object v0, Lcom/asus/vibe2/Vibe;->vibeMainCategoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getVibePremiumAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->useVibeTestPremiumAddress:Z

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "218.211.38.212"

    .line 177
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "vibe-global.asus.com"

    goto :goto_0
.end method

.method public static getVibePremiumAuthKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    sget-object v0, Lcom/asus/vibe2/Vibe;->vibePremiumAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public static getVibePremiumOrderProcessUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/asus/vibe2/Vibe;->vibePremiumOrderProcessUrl:Ljava/lang/String;

    return-object v0
.end method

.method public static isVibePremiumHeaderMode()Z
    .locals 1

    .prologue
    .line 208
    sget-boolean v0, Lcom/asus/vibe2/Vibe;->vibePremiumHeaderMode:Z

    return v0
.end method

.method public static loggedIn()Z
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/asus/vibe2/Vibe;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static regionAvailable()Z
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "newContext"

    .prologue
    .line 79
    sput-object p0, Lcom/asus/vibe2/Vibe;->context:Landroid/content/Context;

    .line 80
    return-void
.end method

.method public static setMd5password(Ljava/lang/String;)V
    .locals 0
    .parameter "md5password"

    .prologue
    .line 154
    sput-object p0, Lcom/asus/vibe2/Vibe;->md5password:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public static setRegion(Ljava/lang/String;)Z
    .locals 4
    .parameter "newRegion"

    .prologue
    .line 117
    sget-object v0, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    .line 118
    .local v0, oldRegion:Ljava/lang/String;
    sget-boolean v1, Lcom/asus/vibe2/Vibe;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "ASUS@Vibe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":newRegion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    sput-object p0, Lcom/asus/vibe2/Vibe;->region:Ljava/lang/String;

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 121
    sget-object v1, Lcom/asus/vibe2/Vibe;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.asus.vibe.action.APP_INFO_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 122
    const/4 v1, 0x1

    .line 124
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setServiceGatewayAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "serviceGatewayAddress"

    .prologue
    .line 162
    sput-object p0, Lcom/asus/vibe2/Vibe;->serviceGatewayAddress:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 0
    .parameter "username"

    .prologue
    .line 139
    sput-object p0, Lcom/asus/vibe2/Vibe;->username:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static setVibeFreeAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "vibeFreeAddress"

    .prologue
    .line 170
    sput-object p0, Lcom/asus/vibe2/Vibe;->vibeFreeAddress:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public static setVibeFreeDefaultToken(Ljava/lang/String;)V
    .locals 0
    .parameter "vibeFreeToken"

    .prologue
    .line 192
    sput-object p0, Lcom/asus/vibe2/Vibe;->vibeFreeDefaultToken:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public static setVibeFreeToken(Ljava/lang/String;)V
    .locals 0
    .parameter "vibeFreeToken"

    .prologue
    .line 196
    sput-object p0, Lcom/asus/vibe2/Vibe;->vibeFreeUserToken:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public static setVibeMainCategoryList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeItem_Main;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, vibeMainCategoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Main;>;"
    sput-object p0, Lcom/asus/vibe2/Vibe;->vibeMainCategoryList:Ljava/util/ArrayList;

    .line 229
    return-void
.end method

.method public static setVibePremiumAuthKey(Ljava/lang/String;)V
    .locals 0
    .parameter "vibePremiumAuthKey"

    .prologue
    .line 204
    sput-object p0, Lcom/asus/vibe2/Vibe;->vibePremiumAuthKey:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public static setVibePremiumHeaderMode(Z)V
    .locals 0
    .parameter "vibePremiumHeaderMode"

    .prologue
    .line 212
    sput-boolean p0, Lcom/asus/vibe2/Vibe;->vibePremiumHeaderMode:Z

    .line 213
    return-void
.end method

.method public static setVibePremiumOrderProcessUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "vibePremiumOrderProcessUrl"

    .prologue
    .line 220
    sput-object p0, Lcom/asus/vibe2/Vibe;->vibePremiumOrderProcessUrl:Ljava/lang/String;

    .line 221
    return-void
.end method
