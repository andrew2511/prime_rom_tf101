.class Lcom/android/i18n/addressinput/LookupKey$Builder;
.super Ljava/lang/Object;
.source "LookupKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/LookupKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

.field private languageCode:Ljava/lang/String;

.field private nodes:Ljava/util/Map;
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

.field private script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/LookupKey$KeyType;)V
    .locals 2
    .parameter

    .prologue
    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 283
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    .line 292
    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 293
    return-void
.end method

.method constructor <init>(Lcom/android/i18n/addressinput/LookupKey;)V
    .locals 6
    .parameter

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 283
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    .line 299
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$400(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$KeyType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 300
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$500(Lcom/android/i18n/addressinput/LookupKey;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 301
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$600(Lcom/android/i18n/addressinput/LookupKey;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    .line 302
    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 303
    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$800(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 308
    :cond_0
    return-void

    .line 306
    :cond_1
    iget-object v4, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/i18n/addressinput/LookupKey;->access$800(Lcom/android/i18n/addressinput/LookupKey;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 283
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/android/i18n/addressinput/AddressField;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    .line 320
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 322
    aget-object v1, v0, v4

    sget-object v2, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    aget-object v1, v0, v4

    sget-object v2, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    invoke-virtual {v2}, Lcom/android/i18n/addressinput/LookupKey$KeyType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong key type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    :cond_0
    array-length v1, v0

    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_1

    .line 327
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' deeper than supported hierarchy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_1
    aget-object v1, v0, v4

    const-string v2, "data"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 331
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$KeyType;->DATA:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    iput-object v1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 334
    array-length v1, v0

    if-le v1, v6, :cond_4

    .line 335
    aget-object v1, v0, v6

    invoke-static {v1}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 336
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 338
    array-length v2, v1

    if-eq v2, v5, :cond_2

    .line 339
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong format: Substring should be country code--language code"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_2
    aget-object v2, v1, v4

    .line 344
    aget-object v1, v1, v6

    iput-object v1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    move-object v1, v2

    .line 346
    :cond_3
    iget-object v2, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_4
    array-length v1, v0

    if-le v1, v5, :cond_5

    move v1, v5

    .line 351
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 352
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/i18n/addressinput/Util;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    if-nez v2, :cond_6

    .line 385
    :cond_5
    :goto_1
    return-void

    .line 356
    :cond_6
    iget-object v3, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    invoke-static {}, Lcom/android/i18n/addressinput/LookupKey;->access$700()[Lcom/android/i18n/addressinput/AddressField;

    move-result-object v4

    sub-int v5, v1, v6

    aget-object v4, v4, v5

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    :cond_7
    aget-object v1, v0, v4

    const-string v2, "examples"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 360
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$KeyType;->EXAMPLES:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    iput-object v1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    .line 363
    array-length v1, v0

    if-le v1, v6, :cond_8

    .line 364
    iget-object v1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v2, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    aget-object v3, v0, v6

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_8
    array-length v1, v0

    if-le v1, v5, :cond_9

    .line 369
    aget-object v1, v0, v5

    .line 370
    const-string v2, "local"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 371
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 381
    :cond_9
    :goto_2
    array-length v1, v0

    if-le v1, v7, :cond_5

    aget-object v1, v0, v7

    const-string v2, "_default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 382
    aget-object v0, v0, v7

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    goto :goto_1

    .line 372
    :cond_a
    const-string v2, "latin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 373
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto :goto_2

    .line 375
    :cond_b
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Script type has to be either latin or local."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$KeyType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->keyType:Lcom/android/i18n/addressinput/LookupKey$KeyType;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/i18n/addressinput/LookupKey$Builder;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$ScriptType;)Lcom/android/i18n/addressinput/LookupKey$ScriptType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/i18n/addressinput/LookupKey$Builder;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/i18n/addressinput/LookupKey$Builder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method build()Lcom/android/i18n/addressinput/LookupKey;
    .locals 2

    .prologue
    .line 430
    new-instance v0, Lcom/android/i18n/addressinput/LookupKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/i18n/addressinput/LookupKey;-><init>(Lcom/android/i18n/addressinput/LookupKey$Builder;Lcom/android/i18n/addressinput/LookupKey$1;)V

    return-object v0
.end method

.method setAddressData(Lcom/android/i18n/addressinput/AddressData;)Lcom/android/i18n/addressinput/LookupKey$Builder;
    .locals 3
    .parameter "data"

    .prologue
    .line 400
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->languageCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    iput-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->script:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    .line 407
    :cond_0
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 426
    :cond_1
    :goto_0
    return-object p0

    .line 410
    :cond_2
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/android/i18n/addressinput/LookupKey$Builder;->nodes:Ljava/util/Map;

    sget-object v1, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    invoke-virtual {p1}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
