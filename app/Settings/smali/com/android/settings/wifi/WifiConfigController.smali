.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static final ENABLE_WAPI:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mHasWapiAsCert:Z

.field private mHasWapiUserCert:Z

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsidView:Landroid/widget/TextView;

.field private final mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    const-string v0, "ro.wifi.country"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi-only"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->ENABLE_WAPI:Z

    .line 74
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_1
    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0

    :cond_1
    move v0, v2

    .line 74
    goto :goto_1

    .line 78
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 22
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mHasWapiAsCert:Z

    .line 88
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mHasWapiUserCert:Z

    .line 140
    new-instance v16, Landroid/net/LinkProperties;

    invoke-direct/range {v16 .. v16}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 161
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 162
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 164
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 165
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 166
    if-nez p3, :cond_3

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 168
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 171
    .local v7, context:Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 173
    .local v12, resources:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    const v17, 0x7f0801c7

    invoke-interface/range {v16 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f0115

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f0116

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 179
    sget-boolean v16, Lcom/android/settings/wifi/WifiConfigController;->ENABLE_WAPI:Z

    if-eqz v16, :cond_0

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f070015

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSpinnerAdapter(Landroid/widget/Spinner;[Ljava/lang/String;)V

    .line 181
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 182
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f013a

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f013f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    new-instance v17, Landroid/widget/ArrayAdapter;

    const v18, 0x7f040060

    const v19, 0x1020014

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    sget-boolean v21, Lcom/android/settings/wifi/WifiConfigController;->ENABLE_WAPI:Z

    if-eqz v21, :cond_4

    const v21, 0x7f070015

    :goto_1
    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object v1, v7

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 193
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    const v17, 0x7f0801ef

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 268
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    const v17, 0x7f0801f0

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 272
    :cond_2
    return-void

    .line 166
    .end local v7           #context:Landroid/content/Context;
    .end local v12           #resources:Landroid/content/res/Resources;
    .restart local p1
    :cond_3
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v16, v0

    goto/16 :goto_0

    .line 186
    .end local p1
    .restart local v7       #context:Landroid/content/Context;
    .restart local v12       #resources:Landroid/content/res/Resources;
    :cond_4
    const v21, 0x7f070014

    goto :goto_1

    .line 191
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f0114

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 195
    .restart local p1
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f012f

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f0128

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f0113

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 204
    .local v8, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    .line 205
    .local v14, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v14, :cond_7

    .line 206
    const v16, 0x7f0801d7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 209
    :cond_7
    sget-boolean v16, Lcom/android/settings/wifi/WifiConfigController;->ENABLE_WAPI:Z

    if-eqz v16, :cond_f

    const v16, 0x7f070015

    :goto_4
    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, type:[Ljava/lang/String;
    const v16, 0x7f0801d5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    aget-object v17, v15, v17

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v11

    .line 213
    .local v11, level:I
    const/16 v16, -0x1

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 214
    const v16, 0x7f07001b

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 215
    .local v13, signal:[Ljava/lang/String;
    const v16, 0x7f0801d6

    aget-object v17, v13, v11

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 218
    .end local v13           #signal:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 219
    .local v10, info:Landroid/net/wifi/WifiInfo;
    if-eqz v10, :cond_9

    .line 220
    const v16, 0x7f0801d8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "Mbps"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 223
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    .line 225
    .local v6, config:Landroid/net/wifi/WifiConfiguration;
    move-object v0, v6

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setSelection(I)V

    .line 235
    :cond_a
    move-object v0, v6

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v16, v0

    sget-object v17, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_11

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setSelection(I)V

    .line 243
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 244
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    .line 247
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v16, v0

    if-eqz v16, :cond_e

    .line 248
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 253
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v16, v0

    if-eqz v16, :cond_12

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    const v17, 0x7f0801ef

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 209
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v11           #level:I
    .end local v15           #type:[Ljava/lang/String;
    :cond_f
    const v16, 0x7f070014

    goto/16 :goto_4

    .line 228
    .restart local v6       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v10       #info:Landroid/net/wifi/WifiInfo;
    .restart local v11       #level:I
    .restart local v15       #type:[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setSelection(I)V

    .line 230
    move-object v0, v6

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    .line 231
    .local v5, a:Ljava/net/InetAddress;
    const v16, 0x7f0801d9

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object v1, v8

    move/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_6

    .line 238
    .end local v5           #a:Ljava/net/InetAddress;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_5

    .line 256
    .end local v6           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    if-nez v14, :cond_13

    const/16 v16, -0x1

    move v0, v11

    move/from16 v1, v16

    if-eq v0, v1, :cond_13

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    const v17, 0x7f0801ed

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 261
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    const v17, 0x7f0801ee

    move-object v0, v7

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 259
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0f012e

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 285
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04005e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0f004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 287
    const v1, 0x7f0f0093

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    return-void
.end method

.method private enableSubmitIfAppropriate()V
    .locals 4

    .prologue
    .line 293
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v1

    .line 294
    .local v1, submit:Landroid/widget/Button;
    if-nez v1, :cond_0

    .line 316
    :goto_0
    return-void

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 297
    .local v0, enabled:Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_4
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    const/16 v3, 0x8

    if-ge v2, v3, :cond_8

    .line 305
    :cond_7
    const/4 v0, 0x0

    .line 310
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 311
    const/4 v0, 0x1

    .line 315
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 307
    :cond_8
    const/4 v0, 0x1

    goto :goto_1

    .line 313
    :cond_9
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 441
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 442
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 446
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v8, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v8, :cond_1

    .line 447
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 448
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v10

    .line 476
    .end local v6           #result:I
    :goto_1
    return v7

    .line 442
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 453
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 457
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v8, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v8, :cond_2

    .line 458
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 459
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 462
    .local v3, port:I
    const/4 v6, 0x0

    .line 464
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 465
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 469
    :goto_3
    if-nez v6, :cond_4

    .line 470
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 471
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 476
    goto :goto_1

    .line 453
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 466
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 467
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0800c3

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v10

    .line 473
    goto :goto_1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 762
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 763
    const v1, 0x7f0801e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 765
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 766
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 767
    :cond_0
    new-array v2, v5, [Ljava/lang/String;

    aput-object v1, v2, v4

    move-object v1, v2

    .line 775
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 777
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 778
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 779
    return-void

    .line 769
    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 770
    aput-object v1, v3, v4

    .line 771
    array-length v1, v2

    invoke-static {v2, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v3

    .line 772
    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 146
    if-nez p0, :cond_0

    move v5, v7

    .line 156
    :goto_0
    return v5

    .line 149
    :cond_0
    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 151
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 152
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_1

    const-string v5, "keystore://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v8

    .line 153
    goto :goto_0

    .line 151
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #value:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 156
    goto :goto_0
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 783
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 786
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 4
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 789
    if-eqz p2, :cond_0

    .line 790
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 791
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 792
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 798
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 791
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setSpinnerAdapter(Landroid/widget/Spinner;[Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "items"

    .prologue
    .line 275
    if-eqz p2, :cond_0

    .line 276
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1090008

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 278
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 280
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 282
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    return-void
.end method

.method private showIpConfigFields()V
    .locals 5

    .prologue
    const v4, 0x7f0f0130

    const/4 v3, 0x0

    .line 675
    const/4 v0, 0x0

    .line 677
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f012e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 679
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    .line 680
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 683
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    .line 684
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f0131

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 687
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 688
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f0132

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f0133

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 692
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f0134

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 694
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 695
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f0135

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 696
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 698
    :cond_0
    if-eqz v1, :cond_4

    .line 699
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 700
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 701
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 703
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 704
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getGateways()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 709
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 710
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    :cond_2
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 713
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 717
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 723
    :cond_4
    :goto_1
    return-void

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showNetworkSetupFields()V
    .locals 7

    .prologue
    const v6, 0x7f0f011f

    const v5, 0x7f0f011d

    const/16 v4, 0x8

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f011b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    .line 652
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 658
    if-ne v0, v3, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 665
    :goto_0
    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 672
    :goto_1
    return-void

    .line 661
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 669
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0f012a

    const v5, 0x7f0f0129

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 726
    const/4 v0, 0x0

    .line 728
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f0127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 730
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 731
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 734
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 735
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f012b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 739
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f012c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 741
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 742
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f012d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 743
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 745
    :cond_0
    if-eqz v1, :cond_1

    .line 746
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 747
    if-eqz v0, :cond_1

    .line 748
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    :cond_1
    :goto_1
    return-void

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 8

    .prologue
    const v7, 0x7f0f0120

    const v3, 0x7f0f011f

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/16 v4, 0x8

    .line 560
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v0, :cond_2

    .line 568
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 571
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 574
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0118

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 575
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_3

    .line 579
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v1, 0x7f0801e4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 583
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    .line 584
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 595
    :cond_4
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_7

    .line 596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 616
    :cond_5
    :goto_2
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 617
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 587
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    .line 589
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_4

    .line 590
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 591
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 598
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    .line 601
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    .line 603
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v1, "WAPIAS_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string v1, "WAPIUSR_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_5

    .line 607
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 608
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 609
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v2, "WAPIAS_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string v2, "WAPIUSR_"

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 620
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0121

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 624
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 625
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0123

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 626
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 627
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0125

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0f0126

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 630
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 635
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 10
    .parameter "linkProperties"

    .prologue
    const v9, 0x7f0801fd

    .line 480
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, ipAddr:Ljava/lang/String;
    const/4 v5, 0x0

    .line 483
    .local v5, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 488
    const/4 v7, -0x1

    .line 490
    .local v7, networkPrefixLength:I
    :try_start_1
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v7

    .line 492
    :goto_0
    if-ltz v7, :cond_0

    const/16 v8, 0x20

    if-le v7, v8, :cond_1

    .line 493
    :cond_0
    const v8, 0x7f0801fe

    .line 523
    .end local v7           #networkPrefixLength:I
    :goto_1
    return v8

    .line 484
    :catch_0
    move-exception v2

    .line 485
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0801fb

    goto :goto_1

    .line 495
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #networkPrefixLength:I
    :cond_1
    new-instance v8, Landroid/net/LinkAddress;

    invoke-direct {v8, v5, v7}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v8}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 497
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 498
    .local v3, gateway:Ljava/lang/String;
    const/4 v4, 0x0

    .line 500
    .local v4, gatewayAddr:Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 504
    invoke-virtual {p1, v4}, Landroid/net/LinkProperties;->addGateway(Ljava/net/InetAddress;)V

    .line 506
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, dns:Ljava/lang/String;
    const/4 v1, 0x0

    .line 509
    .local v1, dnsAddr:Ljava/net/InetAddress;
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 513
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 514
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 515
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    :try_start_4
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 521
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 523
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 501
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    :catch_1
    move-exception v2

    .line 502
    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    const v8, 0x7f0801fc

    goto :goto_1

    .line 510
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #dns:Ljava/lang/String;
    .restart local v1       #dnsAddr:Ljava/net/InetAddress;
    :catch_2
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 511
    goto :goto_1

    .line 518
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .restart local v2       #e:Ljava/lang/IllegalArgumentException;
    move v8, v9

    .line 519
    goto :goto_1

    .line 491
    .end local v0           #dns:Ljava/lang/String;
    .end local v1           #dnsAddr:Ljava/net/InetAddress;
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    .end local v3           #gateway:Ljava/lang/String;
    .end local v4           #gatewayAddr:Ljava/net/InetAddress;
    :catch_4
    move-exception v8

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 806
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 807
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 811
    return-void
.end method

.method chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 530
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x22

    .line 319
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v4, v5, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v4, :cond_0

    .line 320
    const/4 v4, 0x0

    .line 437
    :goto_0
    return-object v4

    .line 323
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 325
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 326
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 329
    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 339
    :goto_1
    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v4, :pswitch_data_0

    .line 430
    const/4 v4, 0x0

    goto :goto_0

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v4, v5, :cond_2

    .line 331
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 333
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->mode:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->mode:I

    goto :goto_1

    .line 335
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 336
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->mode:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->mode:I

    goto :goto_1

    .line 341
    :pswitch_0
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 433
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 434
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 435
    new-instance v4, Landroid/net/LinkProperties;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v4, v5}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    move-object v4, v0

    .line 437
    goto :goto_0

    .line 345
    :pswitch_1
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 346
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    .line 347
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 348
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 349
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 350
    .local v2, length:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, password:Ljava/lang/String;
    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_4

    const/16 v4, 0x3a

    if-ne v2, v4, :cond_5

    :cond_4
    const-string v4, "[0-9A-Fa-f]*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 354
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v3, v4, v7

    goto :goto_2

    .line 356
    :cond_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    goto :goto_2

    .line 362
    .end local v2           #length:I
    .end local v3           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v8}, Ljava/util/BitSet;->set(I)V

    .line 363
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 366
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 368
    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 374
    .end local v3           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v9}, Ljava/util/BitSet;->set(I)V

    .line 375
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 376
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 378
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_7

    const-string v5, ""

    :goto_3
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 380
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_8

    const-string v4, ""

    :goto_4
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 383
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    :goto_5
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 386
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_a

    const-string v4, ""

    :goto_6
    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 389
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_b

    const-string v5, ""

    :goto_7
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 391
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v5

    if-nez v5, :cond_c

    const-string v5, ""

    :goto_8
    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 393
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 378
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "auth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 380
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://CACERT_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 383
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://USRCERT_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 386
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keystore://USRPKEY_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_6

    .line 389
    :cond_b
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    .line 391
    :cond_c
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_8

    .line 399
    :pswitch_4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 400
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4, v9}, Ljava/util/BitSet;->set(I)V

    .line 401
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-eqz v4, :cond_d

    .line 402
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 403
    .restart local v3       #password:Ljava/lang/String;
    const-string v4, "[0-9A-Fa-f]{64}"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 404
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 409
    .end local v3           #password:Ljava/lang/String;
    :cond_d
    :goto_9
    sget-object v4, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    aget v1, v4, v5

    .line 410
    .local v1, iType:I
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 411
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", config.wapiPskType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 406
    .end local v1           #iType:I
    .restart local v3       #password:Ljava/lang/String;
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_9

    .line 415
    .end local v3           #password:Ljava/lang/String;
    :pswitch_5
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 416
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v4, v9}, Ljava/util/BitSet;->set(I)V

    .line 417
    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 418
    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 419
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_f

    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_f
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_10

    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiAsCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_10
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_13

    const-string v4, ""

    :goto_a
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 423
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_11

    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItemPosition() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_11
    sget-boolean v4, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v4, :cond_12

    const-string v4, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWapiUserCert.getSelectedItem() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_12
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_14

    const-string v4, ""

    :goto_b
    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_2

    .line 421
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIAS_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_a

    .line 425
    :cond_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://WAPIUSR_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    .line 339
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getWpsConfig()Landroid/net/wifi/WpsConfiguration;
    .locals 3

    .prologue
    .line 534
    new-instance v0, Landroid/net/wifi/WpsConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WpsConfiguration;-><init>()V

    .line 535
    .local v0, config:Landroid/net/wifi/WpsConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 546
    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->INVALID:Landroid/net/wifi/WpsConfiguration$Setup;

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->setup:Landroid/net/wifi/WpsConfiguration$Setup;

    .line 547
    const-string v1, "WifiConfigController"

    const-string v2, "WPS not selected type"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :goto_0
    return-object v0

    .line 537
    :pswitch_0
    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PBC:Landroid/net/wifi/WpsConfiguration$Setup;

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->setup:Landroid/net/wifi/WpsConfiguration$Setup;

    .line 550
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0f011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->pin:Ljava/lang/String;

    .line 551
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_2
    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->BSSID:Ljava/lang/String;

    .line 553
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 554
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 555
    new-instance v1, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v1, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 540
    :pswitch_1
    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_ACCESS_POINT:Landroid/net/wifi/WpsConfiguration$Setup;

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->setup:Landroid/net/wifi/WpsConfiguration$Setup;

    goto :goto_1

    .line 543
    :pswitch_2
    sget-object v1, Landroid/net/wifi/WpsConfiguration$Setup;->PIN_FROM_DEVICE:Landroid/net/wifi/WpsConfiguration$Setup;

    iput-object v1, v0, Landroid/net/wifi/WpsConfiguration;->setup:Landroid/net/wifi/WpsConfiguration$Setup;

    goto :goto_1

    .line 551
    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .line 535
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 801
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 823
    return-void

    .line 819
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 827
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 828
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 829
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 830
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 840
    :goto_0
    return-void

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 832
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showNetworkSetupFields()V

    goto :goto_0

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 834
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 835
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0

    .line 837
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 838
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 844
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 815
    return-void
.end method
