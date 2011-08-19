.class public Lcom/android/i18n/addressinput/AddressWidget;
.super Ljava/lang/Object;
.source "AddressWidget.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/addressinput/AddressWidget$4;,
        Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;,
        Lcom/android/i18n/addressinput/AddressWidget$UpdateRunnable;,
        Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;
    }
.end annotation


# static fields
.field private static final ADMIN_ERROR_MESSAGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final ADMIN_LABELS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;


# instance fields
.field private mAdminLabel:Ljava/lang/String;

.field private mCacheData:Lcom/android/i18n/addressinput/CacheData;

.field private mContext:Landroid/content/Context;

.field private mCurrentRegion:Ljava/lang/String;

.field private mFormController:Lcom/android/i18n/addressinput/FormController;

.field private mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

.field private mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

.field final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mInputWidgets:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Lcom/android/i18n/addressinput/AddressUIComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

.field private mSavedErrors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

.field private mSpinners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUpdateMultipleFields:Ljava/lang/Runnable;

.field private mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

.field private mWidgetLocale:Ljava/lang/String;

.field private mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xf

    .line 106
    new-instance v0, Lcom/android/i18n/addressinput/FormOptions$Builder;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/FormOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/FormOptions$Builder;->build()Lcom/android/i18n/addressinput/FormOptions;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget;->SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 118
    const-string v1, "area"

    const v2, 0x7f070009

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v1, "county"

    const v2, 0x7f07000a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "department"

    const v2, 0x7f07000b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v1, "district"

    const v2, 0x7f070003

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v1, "do_si"

    const v2, 0x7f07000c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v1, "emirate"

    const v2, 0x7f07000d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "island"

    const v2, 0x7f07000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v1, "parish"

    const v2, 0x7f07000f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v1, "prefecture"

    const v2, 0x7f070010

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v1, "province"

    const v2, 0x7f070011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "state"

    const v2, 0x7f070012

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_LABELS:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 132
    const-string v1, "area"

    const v2, 0x7f070019

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v1, "county"

    const v2, 0x7f07001a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v1, "department"

    const v2, 0x7f07001b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v1, "district"

    const v2, 0x7f070016

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v1, "do_si"

    const v2, 0x7f07001c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v1, "emirate"

    const v2, 0x7f07001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v1, "island"

    const v2, 0x7f07001e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v1, "parish"

    const v2, 0x7f07001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "prefecture"

    const v2, 0x7f070020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v1, "province"

    const v2, 0x7f070021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "state"

    const v2, 0x7f070022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_ERROR_MESSAGES:Ljava/util/Map;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$1;

    invoke-direct {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget$1;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    .line 565
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 566
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/AddressWidget;->init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    .line 568
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;Lcom/android/i18n/addressinput/AddressData;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    .line 147
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mHandler:Landroid/os/Handler;

    .line 149
    new-instance v0, Lcom/android/i18n/addressinput/AddressWidget$1;

    invoke-direct {v0, p0}, Lcom/android/i18n/addressinput/AddressWidget$1;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mUpdateMultipleFields:Ljava/lang/Runnable;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    .line 576
    invoke-virtual {p5}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 578
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/AddressWidget;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 579
    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 581
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/i18n/addressinput/AddressWidget;->init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V

    .line 582
    invoke-virtual {p0, p5}, Lcom/android/i18n/addressinput/AddressWidget;->renderFormWithSavedAddress(Lcom/android/i18n/addressinput/AddressData;)V

    .line 583
    return-void
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/AddressWidget;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->updateFields()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->updateInputWidget(Lcom/android/i18n/addressinput/AddressField;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/i18n/addressinput/AddressWidget;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/i18n/addressinput/AddressWidget;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/i18n/addressinput/AddressWidget;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildCountryListBox()V
    .locals 10

    .prologue
    .line 389
    new-instance v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v7, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v2, v7}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 390
    .local v2, countryUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v8, 0x7f070001

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, countries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/i18n/addressinput/RegionData;>;"
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    new-instance v8, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v9, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v8, v9}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v8}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/i18n/addressinput/RegionData;

    .line 394
    .local v5, regionData:Lcom/android/i18n/addressinput/RegionData;
    invoke-virtual {v5}, Lcom/android/i18n/addressinput/RegionData;->getKey()Ljava/lang/String;

    move-result-object v6

    .line 396
    .local v6, regionKey:Ljava/lang/String;
    const-string v7, "ZZ"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 397
    invoke-direct {p0, v6}, Lcom/android/i18n/addressinput/AddressWidget;->getLocalCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 398
    .local v4, localCountryName:Ljava/lang/String;
    new-instance v7, Lcom/android/i18n/addressinput/RegionData$Builder;

    invoke-direct {v7}, Lcom/android/i18n/addressinput/RegionData$Builder;-><init>()V

    invoke-virtual {v7, v6}, Lcom/android/i18n/addressinput/RegionData$Builder;->setKey(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/i18n/addressinput/RegionData$Builder;->setName(Ljava/lang/String;)Lcom/android/i18n/addressinput/RegionData$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/i18n/addressinput/RegionData$Builder;->build()Lcom/android/i18n/addressinput/RegionData;

    move-result-object v1

    .line 400
    .local v1, country:Lcom/android/i18n/addressinput/RegionData;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 403
    .end local v1           #country:Lcom/android/i18n/addressinput/RegionData;
    .end local v4           #localCountryName:Ljava/lang/String;
    .end local v5           #regionData:Lcom/android/i18n/addressinput/RegionData;
    .end local v6           #regionKey:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    .line 404
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v8, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v7, v8, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-void
.end method

.method private buildFieldWidgets()V
    .locals 14

    .prologue
    .line 299
    new-instance v12, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v12}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v13, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v4

    .line 300
    .local v4, data:Lcom/android/i18n/addressinput/AddressData;
    new-instance v12, Lcom/android/i18n/addressinput/LookupKey$Builder;

    sget-object v13, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-direct {v12, v13}, Lcom/android/i18n/addressinput/LookupKey$Builder;-><init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V

    invoke-virtual {v12, v4}, Lcom/android/i18n/addressinput/LookupKey$Builder;->setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/i18n/addressinput/LookupKey$Builder;->build()Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v5

    .line 301
    .local v5, key:Lcom/android/i18n/addressinput/LookupKey;
    new-instance v12, Lcom/android/i18n/addressinput/ClientData;

    iget-object v13, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v12, v13}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/LookupKey;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/i18n/addressinput/ClientData;->getDefaultData(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressVerificationNodeData;

    move-result-object v3

    .line 305
    .local v3, countryNode:Lcom/android/i18n/addressinput/AddressVerificationNodeData;
    new-instance v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v2, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 306
    .local v2, adminAreaUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getAdminAreaFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 307
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    new-instance v6, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v6, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 311
    .local v6, localityUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070002

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 312
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    new-instance v11, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v11, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 316
    .local v11, subLocalityUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070003

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 317
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v11}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    new-instance v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 321
    .local v0, addressLine1UI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070006

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 322
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_1:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    new-instance v1, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v1, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 327
    .local v1, addressLine2UI:Lcom/android/i18n/addressinput/AddressUIComponent;
    const-string v12, ""

    invoke-virtual {v1, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 328
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ADDRESS_LINE_2:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v7, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v7, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 332
    .local v7, organizationUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070004

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 333
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v7}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    new-instance v9, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v9, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 337
    .local v9, recipientUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v13, 0x7f070005

    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 338
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v9}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v8, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v8, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 342
    .local v8, postalCodeUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getZipFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 343
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v10, Lcom/android/i18n/addressinput/AddressUIComponent;

    sget-object v12, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v10, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;-><init>(Lcom/android/i18n/addressinput/AddressField;)V

    .line 347
    .local v10, sortingCodeUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    const-string v12, "CEDEX"

    invoke-virtual {v10, v12}, Lcom/android/i18n/addressinput/AddressUIComponent;->setFieldName(Ljava/lang/String;)V

    .line 348
    iget-object v12, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v13, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v12, v13, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method

.method private createView(Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;Z)V
    .locals 11
    .parameter "rootView"
    .parameter "field"
    .parameter "defaultKey"
    .parameter "readOnly"

    .prologue
    const/4 v10, 0x0

    .line 259
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 261
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getFieldName()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, fieldText:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 264
    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040006

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 266
    .local v6, textView:Landroid/widget/TextView;
    invoke-virtual {p1, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .end local v6           #textView:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 270
    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040003

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 271
    .local v7, view:Landroid/view/View;
    invoke-virtual {p2, v7}, Lcom/android/i18n/addressinput/AddressUIComponent;->setView(Landroid/view/View;)V

    .line 272
    move-object v0, v7

    check-cast v0, Landroid/widget/EditText;

    move-object v1, v0

    .line 273
    .local v1, editText:Landroid/widget/EditText;
    if-nez p4, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 274
    invoke-virtual {p1, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v7           #view:Landroid/view/View;
    :cond_1
    :goto_1
    return-void

    .restart local v1       #editText:Landroid/widget/EditText;
    .restart local v7       #view:Landroid/view/View;
    :cond_2
    move v8, v10

    .line 273
    goto :goto_0

    .line 275
    .end local v1           #editText:Landroid/widget/EditText;
    .end local v7           #view:Landroid/view/View;
    :cond_3
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    invoke-virtual {v8, v9}, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 276
    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f040005

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 277
    .restart local v7       #view:Landroid/view/View;
    invoke-virtual {p2, v7}, Lcom/android/i18n/addressinput/AddressUIComponent;->setView(Landroid/view/View;)V

    .line 278
    move-object v0, v7

    check-cast v0, Landroid/widget/Spinner;

    move-object v4, v0

    .line 279
    .local v4, spinner:Landroid/widget/Spinner;
    invoke-virtual {p1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 280
    new-instance v5, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v8

    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getParentId()Lcom/android/i18n/addressinput/AddressField;

    move-result-object v9

    invoke-direct {v5, v4, v8, v9}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;-><init>(Landroid/widget/Spinner;Lcom/android/i18n/addressinput/AddressField;Lcom/android/i18n/addressinput/AddressField;)V

    .line 282
    .local v5, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v9, 0x1090008

    const v10, 0x1090009

    invoke-virtual {v5, v8, v9, v10}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->initAdapter(Landroid/content/Context;II)V

    .line 284
    invoke-static {v5}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$200(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 285
    invoke-virtual {p2}, Lcom/android/i18n/addressinput/AddressUIComponent;->getCandidatesList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8, p3}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSpinnerList(Ljava/util/List;Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 288
    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 290
    :cond_4
    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 291
    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    .locals 3
    .parameter "view"

    .prologue
    .line 412
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    .line 413
    .local v1, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$300(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Landroid/widget/Spinner;

    move-result-object v2

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 417
    .end local v1           #spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getAddressProblems(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/ClientCacheManager;)Lcom/android/i18n/addressinput/AddressProblems;
    .locals 5
    .parameter "address"
    .parameter "cacheManager"

    .prologue
    .line 772
    new-instance v0, Lcom/android/i18n/addressinput/AddressProblems;

    invoke-direct {v0}, Lcom/android/i18n/addressinput/AddressProblems;-><init>()V

    .line 773
    .local v0, problems:Lcom/android/i18n/addressinput/AddressProblems;
    new-instance v1, Lcom/android/i18n/addressinput/StandardAddressVerifier;

    new-instance v2, Lcom/android/i18n/addressinput/FieldVerifier;

    new-instance v3, Lcom/android/i18n/addressinput/ClientData;

    new-instance v4, Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v4, p1}, Lcom/android/i18n/addressinput/CacheData;-><init>(Lcom/android/i18n/addressinput/ClientCacheManager;)V

    invoke-direct {v3, v4}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    invoke-direct {v2, v3}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/DataSource;)V

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/StandardAddressVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;)V

    .line 776
    .local v1, verifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;
    invoke-virtual {v1, p0, v0}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verify(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V

    .line 777
    return-object v0
.end method

.method private getAdminAreaFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;
    .locals 4
    .parameter "countryNode"

    .prologue
    .line 377
    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->STATE_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, adminLabelType:Ljava/lang/String;
    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mAdminLabel:Ljava/lang/String;

    .line 379
    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_LABELS:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 380
    .local v1, result:Ljava/lang/Integer;
    if-nez v1, :cond_0

    .line 382
    const v2, 0x7f070011

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 384
    :cond_0
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 860
    const-string v0, "US"

    .line 863
    .local v0, defaultRegionCode:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v2, v0

    .line 875
    .end local p0
    :goto_0
    return-object v2

    .line 868
    .restart local p0
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, region:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move-object v2, v1

    .line 873
    goto :goto_0

    :cond_1
    move-object v2, v0

    .line 875
    goto :goto_0
.end method

.method private getErrorMessageIdForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 797
    sget-object v0, Lcom/android/i18n/addressinput/AddressWidget$4;->$SwitchMap$com$android$i18n$addressinput$AddressField:[I

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 809
    const v0, 0x7f070014

    .end local p0
    :goto_0
    return v0

    .line 799
    .restart local p0
    :pswitch_0
    sget-object v0, Lcom/android/i18n/addressinput/AddressWidget;->ADMIN_ERROR_MESSAGES:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mAdminLabel:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 801
    .restart local p0
    :pswitch_1
    const v0, 0x7f070015

    goto :goto_0

    .line 803
    :pswitch_2
    const v0, 0x7f070016

    goto :goto_0

    .line 805
    :pswitch_3
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    if-ne v0, v1, :cond_0

    const v0, 0x7f070017

    goto :goto_0

    :cond_0
    const v0, 0x7f070018

    goto :goto_0

    .line 797
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getFullEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .parameter "address"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressData;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    new-instance v0, Lcom/android/i18n/addressinput/FormatInterpreter;

    sget-object v1, Lcom/android/i18n/addressinput/AddressWidget;->SHOW_ALL_FIELDS:Lcom/android/i18n/addressinput/FormOptions;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;-><init>(Lcom/android/i18n/addressinput/FormOptions;)V

    invoke-static {p1}, Lcom/android/i18n/addressinput/AddressWidget;->getDefaultRegionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;->getEnvelopeAddress(Lcom/android/i18n/addressinput/AddressData;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getLocalCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "regionCode"

    .prologue
    .line 408
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {v0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;
    .locals 6
    .parameter "parentField"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/i18n/addressinput/AddressField;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/i18n/addressinput/RegionData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 538
    .local v0, address:Lcom/android/i18n/addressinput/AddressData;
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/FormController;->isDefaultLanguage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 539
    new-instance v3, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v3, v0}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>(Lcom/android/i18n/addressinput/AddressData;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 542
    :cond_0
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v3, v0}, Lcom/android/i18n/addressinput/FormController;->getDataKeyFor(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/i18n/addressinput/LookupKey;->getKeyForUpperLevelField(Lcom/android/i18n/addressinput/AddressField;)Lcom/android/i18n/addressinput/LookupKey;

    move-result-object v2

    .line 546
    .local v2, parentKey:Lcom/android/i18n/addressinput/LookupKey;
    if-nez v2, :cond_1

    .line 547
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t build key with parent field "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". One of"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " the ancestor fields might be empty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 557
    .local v1, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    :goto_0
    return-object v1

    .line 555
    .end local v1           #candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {v3, v2}, Lcom/android/i18n/addressinput/FormController;->getRegionData(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/List;

    move-result-object v1

    .restart local v1       #candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    goto :goto_0
.end method

.method private getViewErrors()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 629
    .local v0, errors:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    .line 631
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v6, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 632
    .local v4, uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v4, :cond_0

    .line 635
    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v5

    .line 636
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 639
    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v6, v7, :cond_0

    .line 640
    check-cast v5, Landroid/widget/EditText;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v3

    .line 641
    .local v3, text:Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    .line 642
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 646
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v3           #text:Ljava/lang/CharSequence;
    .end local v4           #uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    :cond_1
    return-object v0
.end method

.method private getZipFieldName(Lcom/android/i18n/addressinput/AddressVerificationNodeData;)Ljava/lang/String;
    .locals 4
    .parameter "countryNode"

    .prologue
    .line 365
    sget-object v2, Lcom/android/i18n/addressinput/AddressDataKey;->ZIP_NAME_TYPE:Lcom/android/i18n/addressinput/AddressDataKey;

    invoke-virtual {p1, v2}, Lcom/android/i18n/addressinput/AddressVerificationNodeData;->get(Lcom/android/i18n/addressinput/AddressDataKey;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, zipType:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 367
    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->POSTAL:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iput-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    .line 368
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f070007

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, zipName:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 370
    .end local v0           #zipName:Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;->ZIP:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    iput-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mZipLabel:Lcom/android/i18n/addressinput/AddressWidget$ZipLabel;

    .line 371
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    const v3, 0x7f070008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #zipName:Ljava/lang/String;
    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/FormOptions;Lcom/android/i18n/addressinput/ClientCacheManager;)V
    .locals 4
    .parameter "context"
    .parameter "rootView"
    .parameter "formOptions"
    .parameter "cacheManager"

    .prologue
    .line 670
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    .line 671
    iput-object p2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    .line 672
    iput-object p3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    .line 673
    new-instance v0, Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v0, p4}, Lcom/android/i18n/addressinput/CacheData;-><init>(Lcom/android/i18n/addressinput/ClientCacheManager;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    .line 674
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInflater:Landroid/view/LayoutInflater;

    .line 675
    new-instance v0, Lcom/android/i18n/addressinput/FormController;

    new-instance v1, Lcom/android/i18n/addressinput/ClientData;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/i18n/addressinput/FormController;-><init>(Lcom/android/i18n/addressinput/ClientData;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    .line 678
    new-instance v0, Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/FormatInterpreter;-><init>(Lcom/android/i18n/addressinput/FormOptions;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    .line 679
    new-instance v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;

    new-instance v1, Lcom/android/i18n/addressinput/FieldVerifier;

    new-instance v2, Lcom/android/i18n/addressinput/ClientData;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCacheData:Lcom/android/i18n/addressinput/CacheData;

    invoke-direct {v2, v3}, Lcom/android/i18n/addressinput/ClientData;-><init>(Lcom/android/i18n/addressinput/CacheData;)V

    invoke-direct {v1, v2}, Lcom/android/i18n/addressinput/FieldVerifier;-><init>(Lcom/android/i18n/addressinput/DataSource;)V

    invoke-direct {v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;-><init>(Lcom/android/i18n/addressinput/FieldVerifier;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    .line 681
    sget-object v0, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v0}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->buildCountryListBox()V

    .line 683
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/i18n/addressinput/AddressWidget;->getLocalCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p3, v3}, Lcom/android/i18n/addressinput/FormOptions;->isReadonly(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v3

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/i18n/addressinput/AddressWidget;->createView(Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;Z)V

    .line 687
    :cond_0
    return-void
.end method

.method private initializeDropDowns()V
    .locals 6

    .prologue
    .line 352
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 353
    .local v1, adminAreaUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v0

    .line 354
    .local v0, adminAreaList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    invoke-virtual {v1, v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    .line 356
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    sget-object v5, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v4, v5}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 357
    .local v3, localityUI:Lcom/android/i18n/addressinput/AddressUIComponent;
    sget-object v4, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {p0, v4}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v2

    .line 358
    .local v2, localityList:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    invoke-virtual {v3, v2}, Lcom/android/i18n/addressinput/AddressUIComponent;->initializeCandidatesList(Ljava/util/List;)V

    .line 359
    return-void
.end method

.method private initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 9
    .parameter "savedAddress"

    .prologue
    .line 594
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 596
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v6, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 597
    .local v3, uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v3, :cond_0

    .line 600
    invoke-virtual {p1, v0}, Lcom/android/i18n/addressinput/AddressData;->getFieldValue(Lcom/android/i18n/addressinput/AddressField;)Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, value:Ljava/lang/String;
    if-nez v4, :cond_1

    .line 602
    const-string v4, ""

    .line 604
    :cond_1
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v5

    .line 605
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 608
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v6

    sget-object v7, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v6, v7, :cond_2

    .line 609
    invoke-direct {p0, v5}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v2

    .line 610
    .local v2, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    if-eqz v2, :cond_0

    .line 613
    invoke-virtual {v2, v4}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 615
    .end local v2           #spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    :cond_2
    check-cast v5, Landroid/widget/EditText;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 618
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v3           #uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .parameter "regionCode"

    .prologue
    .line 850
    invoke-static {}, Lcom/android/i18n/addressinput/RegionDataConstants;->getCountryFormatMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutAddressFields()V
    .locals 6

    .prologue
    .line 449
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 451
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 452
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/addressinput/AddressUIComponent;

    const-string v4, ""

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    invoke-virtual {v5, v0}, Lcom/android/i18n/addressinput/FormOptions;->isReadonly(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v5

    invoke-direct {p0, v3, v2, v4, v5}, Lcom/android/i18n/addressinput/AddressWidget;->createView(Landroid/view/ViewGroup;Lcom/android/i18n/addressinput/AddressUIComponent;Ljava/lang/String;Z)V

    goto :goto_0

    .line 455
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_1
    return-void
.end method

.method private removePreviousViews()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 434
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    if-nez v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 438
    .local v0, childCount:I
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormOptions:Lcom/android/i18n/addressinput/FormOptions;

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/FormOptions;->isHidden(Lcom/android/i18n/addressinput/AddressField;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 439
    if-lez v0, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 442
    :cond_2
    if-le v0, v3, :cond_0

    .line 444
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v3, v2}, Landroid/view/ViewGroup;->removeViews(II)V

    goto :goto_0
.end method

.method private setViewErrors(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/i18n/addressinput/AddressField;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 650
    .local p1, errors:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressField;

    .line 651
    .local v0, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v5, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 652
    .local v3, uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v3, :cond_0

    .line 655
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v4

    .line 656
    .local v4, view:Landroid/view/View;
    if-eqz v4, :cond_0

    .line 659
    invoke-virtual {v3}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v5

    sget-object v6, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v5, v6, :cond_0

    .line 660
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 661
    .local v2, text:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 662
    check-cast v4, Landroid/widget/EditText;

    .end local v4           #view:Landroid/view/View;
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 666
    .end local v0           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v2           #text:Ljava/lang/String;
    .end local v3           #uiComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    :cond_1
    return-void
.end method

.method private setWidgetLocaleAndScript()V
    .locals 2

    .prologue
    .line 525
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/i18n/addressinput/Util;->getWidgetCompatibleLanguageCode(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormController;->setLanguageCode(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    :goto_0
    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 530
    return-void

    .line 527
    :cond_0
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_0
.end method

.method private updateChildNodes(Landroid/widget/AdapterView;I)V
    .locals 6
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v2

    .line 459
    .local v2, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    if-nez v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    invoke-static {v2}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$400(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    .line 465
    .local v0, myId:Lcom/android/i18n/addressinput/AddressField;
    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    if-eq v0, v3, :cond_2

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v3, :cond_0

    .line 472
    :cond_2
    invoke-virtual {v2, p2}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->getRegionCode(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    .local v1, regionCode:Ljava/lang/String;
    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    if-ne v0, v3, :cond_3

    .line 474
    invoke-virtual {p0, v1}, Lcom/android/i18n/addressinput/AddressWidget;->updateWidgetOnCountryChange(Ljava/lang/String;)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v4

    new-instance v5, Lcom/android/i18n/addressinput/AddressWidget$2;

    invoke-direct {v5, p0, v0}, Lcom/android/i18n/addressinput/AddressWidget$2;-><init>(Lcom/android/i18n/addressinput/AddressWidget;Lcom/android/i18n/addressinput/AddressField;)V

    invoke-virtual {v3, v4, v5}, Lcom/android/i18n/addressinput/FormController;->requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    goto :goto_0
.end method

.method private updateFields()V
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->removePreviousViews()V

    .line 422
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->buildFieldWidgets()V

    .line 423
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->initializeDropDowns()V

    .line 424
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->layoutAddressFields()V

    .line 425
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->setViewErrors(Ljava/util/Map;)V

    .line 431
    :cond_1
    return-void
.end method

.method private updateInputWidget(Lcom/android/i18n/addressinput/AddressField;)V
    .locals 4
    .parameter "myId"

    .prologue
    .line 499
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSpinners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    .line 500
    .local v1, child:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$500(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 501
    invoke-static {v1}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->access$500(Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;)Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/i18n/addressinput/AddressWidget;->getRegionData(Lcom/android/i18n/addressinput/AddressField;)Ljava/util/List;

    move-result-object v0

    .line 502
    .local v0, candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    const-string v3, ""

    invoke-virtual {v1, v0, v3}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->setSpinnerList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v0           #candidates:Ljava/util/List;,"Ljava/util/List<Lcom/android/i18n/addressinput/RegionData;>;"
    .end local v1           #child:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public clearErrorMessage()V
    .locals 7

    .prologue
    .line 817
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v5, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v6, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    .line 819
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v4, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v4, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 821
    .local v0, addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v4

    sget-object v5, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v4, v5, :cond_0

    .line 822
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 823
    .local v3, view:Landroid/widget/EditText;
    if-eqz v3, :cond_0

    .line 824
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 828
    .end local v0           #addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v3           #view:Landroid/widget/EditText;
    :cond_1
    return-void
.end method

.method public displayErrorMessageForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;
    .locals 5
    .parameter "field"

    .prologue
    .line 786
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 787
    .local v0, addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v3

    sget-object v4, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->EDIT:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v3, v4, :cond_0

    .line 788
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->getErrorMessageIdForInvalidEntryIn(Lcom/android/i18n/addressinput/AddressField;)I

    move-result v1

    .line 789
    .local v1, errorMessageId:I
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 790
    .local v2, view:Landroid/widget/EditText;
    iget-object v3, p0, Lcom/android/i18n/addressinput/AddressWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    move-object v3, v2

    .line 793
    .end local v1           #errorMessageId:I
    .end local v2           #view:Landroid/widget/EditText;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAddressData()Lcom/android/i18n/addressinput/AddressData;
    .locals 10

    .prologue
    .line 702
    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    .line 703
    .local v1, builder:Lcom/android/i18n/addressinput/AddressData$Builder;
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 704
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormatInterpreter:Lcom/android/i18n/addressinput/FormatInterpreter;

    iget-object v8, p0, Lcom/android/i18n/addressinput/AddressWidget;->mScript:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iget-object v9, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/i18n/addressinput/FormatInterpreter;->getAddressFieldOrder(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/addressinput/AddressField;

    .line 706
    .local v2, field:Lcom/android/i18n/addressinput/AddressField;
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v7, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 707
    .local v0, addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-eqz v0, :cond_0

    .line 710
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 711
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getUIType()Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    move-result-object v7

    sget-object v8, Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;->SPINNER:Lcom/android/i18n/addressinput/AddressUIComponent$UIComponent;

    if-ne v7, v8, :cond_1

    .line 713
    invoke-virtual {p0, v2}, Lcom/android/i18n/addressinput/AddressWidget;->getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;

    move-result-object v6

    .line 714
    .local v6, view:Landroid/view/View;
    invoke-direct {p0, v6}, Lcom/android/i18n/addressinput/AddressWidget;->findSpinnerByView(Landroid/view/View;)Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;

    move-result-object v4

    .line 715
    .local v4, spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    if-eqz v4, :cond_1

    .line 716
    invoke-virtual {v4, v5}, Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;->getRegionDataKeyForValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 719
    .end local v4           #spinnerInfo:Lcom/android/i18n/addressinput/AddressWidget$AddressSpinnerInfo;
    .end local v6           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v1, v2, v5}, Lcom/android/i18n/addressinput/AddressData$Builder;->set(Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    goto :goto_0

    .line 721
    .end local v0           #addressUIComponent:Lcom/android/i18n/addressinput/AddressUIComponent;
    .end local v2           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v5           #value:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    .line 722
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v7

    return-object v7
.end method

.method public getAddressProblems()Lcom/android/i18n/addressinput/AddressProblems;
    .locals 3

    .prologue
    .line 761
    new-instance v1, Lcom/android/i18n/addressinput/AddressProblems;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressProblems;-><init>()V

    .line 762
    .local v1, problems:Lcom/android/i18n/addressinput/AddressProblems;
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 763
    .local v0, addressData:Lcom/android/i18n/addressinput/AddressData;
    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mVerifier:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    invoke-virtual {v2, v0, v1}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verify(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V

    .line 764
    return-object v1
.end method

.method public getViewForField(Lcom/android/i18n/addressinput/AddressField;)Landroid/view/View;
    .locals 2
    .parameter "field"

    .prologue
    .line 831
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mInputWidgets:Ljava/util/EnumMap;

    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/i18n/addressinput/AddressUIComponent;

    .line 832
    .local v0, component:Lcom/android/i18n/addressinput/AddressUIComponent;
    if-nez v0, :cond_0

    .line 833
    const/4 v1, 0x0

    .line 835
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressUIComponent;->getView()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
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
    .line 842
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p1, p3}, Lcom/android/i18n/addressinput/AddressWidget;->updateChildNodes(Landroid/widget/AdapterView;I)V

    .line 843
    return-void
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
    .line 839
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public renderForm()V
    .locals 3

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->setWidgetLocaleAndScript()V

    .line 509
    new-instance v1, Lcom/android/i18n/addressinput/AddressData$Builder;

    invoke-direct {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setCountry(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/i18n/addressinput/AddressWidget;->mWidgetLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/i18n/addressinput/AddressData$Builder;->setLanguageCode(Ljava/lang/String;)Lcom/android/i18n/addressinput/AddressData$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressData$Builder;->build()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v0

    .line 511
    .local v0, data:Lcom/android/i18n/addressinput/AddressData;
    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    new-instance v2, Lcom/android/i18n/addressinput/AddressWidget$3;

    invoke-direct {v2, p0}, Lcom/android/i18n/addressinput/AddressWidget$3;-><init>(Lcom/android/i18n/addressinput/AddressWidget;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/i18n/addressinput/FormController;->requestDataForAddress(Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/DataLoadListener;)V

    .line 522
    return-void
.end method

.method public renderFormWithSavedAddress(Lcom/android/i18n/addressinput/AddressData;)V
    .locals 0
    .parameter "savedAddress"

    .prologue
    .line 586
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->setWidgetLocaleAndScript()V

    .line 587
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->removePreviousViews()V

    .line 588
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->buildFieldWidgets()V

    .line 589
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->layoutAddressFields()V

    .line 590
    invoke-direct {p0, p1}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;)V

    .line 591
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "inState"

    .prologue
    .line 895
    const-string v7, "address_data"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/android/i18n/addressinput/AddressData;

    iput-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    .line 896
    iget-object v7, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-direct {p0, v7}, Lcom/android/i18n/addressinput/AddressWidget;->initializeFieldsWithAddress(Lcom/android/i18n/addressinput/AddressData;)V

    .line 899
    const-string v7, "address_error_fields"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 900
    .local v4, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, "address_error_values"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 901
    .local v6, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    if-eqz v6, :cond_1

    .line 902
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 903
    .local v0, errors:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 904
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 905
    .local v3, key:I
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 906
    .local v5, value:Ljava/lang/String;
    invoke-static {}, Lcom/android/i18n/addressinput/AddressField;->values()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v7

    aget-object v1, v7, v3

    .line 907
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 909
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    .end local v3           #key:I
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    iput-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mSavedErrors:Ljava/util/Map;

    .line 910
    invoke-direct {p0, v0}, Lcom/android/i18n/addressinput/AddressWidget;->setViewErrors(Ljava/util/Map;)V

    .line 912
    .end local v0           #errors:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;>;"
    .end local v2           #i:I
    :cond_1
    return-void
.end method

.method public saveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    .line 880
    const-string v5, "address_data"

    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getAddressData()Lcom/android/i18n/addressinput/AddressData;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 883
    invoke-direct {p0}, Lcom/android/i18n/addressinput/AddressWidget;->getViewErrors()Ljava/util/Map;

    move-result-object v0

    .line 884
    .local v0, errors:Ljava/util/Map;,"Ljava/util/Map<Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 885
    .local v3, keys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/addressinput/AddressField;

    .line 887
    .local v1, field:Lcom/android/i18n/addressinput/AddressField;
    invoke-virtual {v1}, Lcom/android/i18n/addressinput/AddressField;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 888
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 890
    .end local v1           #field:Lcom/android/i18n/addressinput/AddressField;
    :cond_0
    const-string v5, "address_error_fields"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 891
    const-string v5, "address_error_values"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 892
    return-void
.end method

.method public updateWidgetOnCountryChange(Ljava/lang/String;)V
    .locals 2
    .parameter "regionCode"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 493
    :cond_0
    iput-object p1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    .line 494
    iget-object v0, p0, Lcom/android/i18n/addressinput/AddressWidget;->mFormController:Lcom/android/i18n/addressinput/FormController;

    iget-object v1, p0, Lcom/android/i18n/addressinput/AddressWidget;->mCurrentRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/i18n/addressinput/FormController;->setCurrentCountry(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p0}, Lcom/android/i18n/addressinput/AddressWidget;->renderForm()V

    goto :goto_0
.end method
