.class public Lcom/android/email/activity/setup/SetupData;
.super Ljava/lang/Object;
.source "SetupData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/email/activity/setup/SetupData;",
            ">;"
        }
    .end annotation
.end field

.field private static final FLOW_MODES:[Ljava/lang/String;

.field private static INSTANCE:Lcom/android/email/activity/setup/SetupData;


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

.field private mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

.field private mAllowAutodiscover:Z

.field private mAutoSetup:Z

.field private mCheckSettingsMode:I

.field private mDefault:Z

.field private mFlowMode:I

.field private mPassword:Ljava/lang/String;

.field private mPolicySet:Lcom/android/emailcommon/service/PolicySet;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "eas"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pop/imap"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "edit"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "force"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "rtc"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rtl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->FLOW_MODES:[Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    .line 195
    new-instance v0, Lcom/android/email/activity/setup/SetupData$1;

    invoke-direct {v0}, Lcom/android/email/activity/setup/SetupData$1;-><init>()V

    sput-object v0, Lcom/android/email/activity/setup/SetupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 57
    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 57
    iput v2, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 58
    iput-boolean v3, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 60
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 62
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 220
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 221
    .local v0, loader:Ljava/lang/ClassLoader;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Account;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 227
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/service/PolicySet;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 230
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountAuthenticatorResponse;

    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 231
    return-void

    :cond_0
    move v1, v2

    .line 226
    goto :goto_0

    :cond_1
    move v1, v2

    .line 228
    goto :goto_1

    :cond_2
    move v1, v2

    .line 229
    goto :goto_2
.end method

.method public static getAccount()Lcom/android/emailcommon/provider/EmailContent$Account;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    return-object v0
.end method

.method public static getAccountAuthenticatorResponse()Landroid/accounts/AccountAuthenticatorResponse;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    return-object v0
.end method

.method public static getFlowMode()I
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget v0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    return v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/email/activity/setup/SetupData;
    .locals 2

    .prologue
    .line 69
    const-class v0, Lcom/android/email/activity/setup/SetupData;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Lcom/android/email/activity/setup/SetupData;

    invoke-direct {v1}, Lcom/android/email/activity/setup/SetupData;-><init>()V

    sput-object v1, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    .line 72
    :cond_0
    sget-object v1, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public static getPolicySet()Lcom/android/emailcommon/service/PolicySet;
    .locals 1

    .prologue
    .line 134
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    return-object v0
.end method

.method public static getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public static init(I)V
    .locals 1
    .parameter "flowMode"

    .prologue
    .line 166
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    .line 167
    .local v0, data:Lcom/android/email/activity/setup/SetupData;
    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupData;->commonInit()V

    .line 168
    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 169
    return-void
.end method

.method public static init(ILcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter "flowMode"
    .parameter "account"

    .prologue
    .line 172
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    .line 173
    .local v0, data:Lcom/android/email/activity/setup/SetupData;
    invoke-virtual {v0}, Lcom/android/email/activity/setup/SetupData;->commonInit()V

    .line 174
    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 175
    iput-object p1, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 176
    return-void
.end method

.method public static isAllowAutodiscover()Z
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    return v0
.end method

.method public static isAutoSetup()Z
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    return v0
.end method

.method public static isDefault()Z
    .locals 1

    .prologue
    .line 150
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    return v0
.end method

.method public static declared-synchronized restore(Landroid/os/Bundle;)Lcom/android/email/activity/setup/SetupData;
    .locals 2
    .parameter "bundle"

    .prologue
    .line 239
    const-class v0, Lcom/android/email/activity/setup/SetupData;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "com.android.email.setupdata"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "com.android.email.setupdata"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/email/activity/setup/SetupData;

    sput-object p0, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;

    .line 241
    sget-object v1, Lcom/android/email/activity/setup/SetupData;->INSTANCE:Lcom/android/email/activity/setup/SetupData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    :goto_0
    monitor-exit v0

    return-object v1

    .restart local p0
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 239
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static save(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 235
    const-string v0, "com.android.email.setupdata"

    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 236
    return-void
.end method

.method public static setAccount(Lcom/android/emailcommon/provider/EmailContent$Account;)V
    .locals 1
    .parameter "mAccount"

    .prologue
    .line 92
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 93
    return-void
.end method

.method public static setAccountAuthenticatorResponse(Landroid/accounts/AccountAuthenticatorResponse;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 162
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 163
    return-void
.end method

.method public static setAllowAutodiscover(Z)V
    .locals 1
    .parameter "mAllowAutodiscover"

    .prologue
    .line 130
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-boolean p0, v0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 131
    return-void
.end method

.method public static setCheckSettingsMode(I)V
    .locals 1
    .parameter "mCheckSettingsMode"

    .prologue
    .line 112
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 113
    return-void
.end method

.method public static setDefault(Z)V
    .locals 1
    .parameter "mDefault"

    .prologue
    .line 154
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-boolean p0, v0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 155
    return-void
.end method

.method public static setFlowMode(I)V
    .locals 1
    .parameter "mFlowMode"

    .prologue
    .line 84
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput p0, v0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    .line 85
    return-void
.end method

.method public static setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "mPassword"

    .prologue
    .line 108
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public static setPolicySet(Lcom/android/emailcommon/service/PolicySet;)V
    .locals 1
    .parameter "mPolicySet"

    .prologue
    .line 138
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 139
    return-void
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "mUsername"

    .prologue
    .line 100
    invoke-static {}, Lcom/android/email/activity/setup/SetupData;->getInstance()Lcom/android/email/activity/setup/SetupData;

    move-result-object v0

    iput-object p0, v0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 101
    return-void
.end method


# virtual methods
.method commonInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    .line 180
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    .line 182
    iput v2, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    .line 183
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Account;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    .line 184
    iput-boolean v2, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    .line 185
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    .line 187
    iput-object v1, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    .line 188
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mFlowMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccount:Lcom/android/emailcommon/provider/EmailContent$Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget v0, p0, Lcom/android/email/activity/setup/SetupData;->mCheckSettingsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAllowAutodiscover:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mPolicySet:Lcom/android/emailcommon/service/PolicySet;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 214
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mAutoSetup:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget-boolean v0, p0, Lcom/android/email/activity/setup/SetupData;->mDefault:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget-object v0, p0, Lcom/android/email/activity/setup/SetupData;->mAccountAuthenticatorResponse:Landroid/accounts/AccountAuthenticatorResponse;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    return-void

    :cond_0
    move v0, v1

    .line 212
    goto :goto_0

    :cond_1
    move v0, v1

    .line 214
    goto :goto_1

    :cond_2
    move v0, v1

    .line 215
    goto :goto_2
.end method
