.class public Lcom/svox/pico/CheckVoiceData;
.super Landroid/app/Activity;
.source "CheckVoiceData.java"


# static fields
.field private static final PICO_LINGWARE_PATH:Ljava/lang/String;

.field private static final dataFiles:[Ljava/lang/String;

.field private static final dataFilesInfo:[Ljava/lang/String;

.field private static final supportedLanguages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/svox/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/svox/pico/CheckVoiceData;->PICO_LINGWARE_PATH:Ljava/lang/String;

    .line 42
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "de-DE_gl0_sg.bin"

    aput-object v1, v0, v3

    const-string v1, "de-DE_ta.bin"

    aput-object v1, v0, v4

    const-string v1, "en-GB_kh0_sg.bin"

    aput-object v1, v0, v5

    const-string v1, "en-GB_ta.bin"

    aput-object v1, v0, v6

    const-string v1, "en-US_lh0_sg.bin"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "en-US_ta.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "es-ES_ta.bin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "es-ES_zl0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fr-FR_nk0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fr-FR_ta.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "it-IT_cm0_sg.bin"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "it-IT_ta.bin"

    aput-object v2, v0, v1

    sput-object v0, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    .line 48
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "deu-DEU"

    aput-object v1, v0, v3

    const-string v1, "deu-DEU"

    aput-object v1, v0, v4

    const-string v1, "eng-GBR"

    aput-object v1, v0, v5

    const-string v1, "eng-GBR"

    aput-object v1, v0, v6

    const-string v1, "eng-USA"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "eng-USA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "spa-ESP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "spa-ESP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "fra-FRA"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "fra-FRA"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/svox/pico/CheckVoiceData;->dataFilesInfo:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "deu-DEU"

    aput-object v1, v0, v3

    const-string v1, "eng-GBR"

    aput-object v1, v0, v4

    const-string v1, "eng-USA"

    aput-object v1, v0, v5

    const-string v1, "spa-ESP"

    aput-object v1, v0, v6

    const-string v1, "fra-FRA"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "ita-ITA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/svox/pico/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private fileExists(Ljava/lang/String;)Z
    .locals 4
    .parameter "filename"

    .prologue
    .line 114
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/svox/pico/CheckVoiceData;->PICO_LINGWARE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v0, tempFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/tts/lang_pico/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, tempFileSys:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const/4 v2, 0x0

    .line 119
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v6, 0x1

    .line 62
    .local v6, result:I
    const/4 v2, 0x0

    .line 64
    .local v2, foundMatch:Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v8, unavailable:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v5, languageCountry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-virtual {p0}, Lcom/svox/pico/CheckVoiceData;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 70
    .local v1, bundle:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 71
    const-string v9, "checkVoiceDataFor"

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 73
    .local v4, langCountryVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_1

    .line 74
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 75
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    .line 76
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3           #i:I
    .end local v4           #langCountryVars:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    sget-object v9, Lcom/svox/pico/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    array-length v9, v9

    if-ge v3, v9, :cond_6

    .line 84
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lt v9, v11, :cond_2

    sget-object v9, Lcom/svox/pico/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 86
    :cond_2
    sget-object v9, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    mul-int/lit8 v10, v3, 0x2

    aget-object v9, v9, v10

    invoke-direct {p0, v9}, Lcom/svox/pico/CheckVoiceData;->fileExists(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v9, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    mul-int/lit8 v10, v3, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    invoke-direct {p0, v9}, Lcom/svox/pico/CheckVoiceData;->fileExists(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 88
    :cond_3
    const/4 v6, -0x2

    .line 89
    sget-object v9, Lcom/svox/pico/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 91
    :cond_5
    sget-object v9, Lcom/svox/pico/CheckVoiceData;->supportedLanguages:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    const/4 v2, 0x1

    goto :goto_2

    .line 97
    :cond_6
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    if-nez v2, :cond_7

    .line 98
    const/4 v6, 0x0

    .line 102
    :cond_7
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v7, returnData:Landroid/content/Intent;
    const-string v9, "dataRoot"

    sget-object v10, Lcom/svox/pico/CheckVoiceData;->PICO_LINGWARE_PATH:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v9, "dataFiles"

    sget-object v10, Lcom/svox/pico/CheckVoiceData;->dataFiles:[Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v9, "dataFilesInfo"

    sget-object v10, Lcom/svox/pico/CheckVoiceData;->dataFilesInfo:[Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v9, "availableVoices"

    invoke-virtual {v7, v9, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 108
    const-string v9, "unavailableVoices"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p0, v6, v7}, Lcom/svox/pico/CheckVoiceData;->setResult(ILandroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/svox/pico/CheckVoiceData;->finish()V

    .line 111
    return-void
.end method
