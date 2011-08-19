.class synthetic Lcom/android/vending/AssetItemAdapter$5;
.super Ljava/lang/Object;
.source "AssetItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

.field static final synthetic $SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 576
    invoke-static {}, Lcom/android/vending/model/Asset$AppImageUsage;->values()[Lcom/android/vending/model/Asset$AppImageUsage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    :try_start_0
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->ICON:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->PROMO_BADGE:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    sget-object v1, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT_THUMBNAIL:Lcom/android/vending/model/Asset$AppImageUsage;

    invoke-virtual {v1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    .line 325
    :goto_3
    invoke-static {}, Lcom/android/vending/AssetItemAdapter$ViewType;->values()[Lcom/android/vending/AssetItemAdapter$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

    :try_start_4
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->THUMBNAIL_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->DOWNLOAD_SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/vending/AssetItemAdapter$5;->$SwitchMap$com$android$vending$AssetItemAdapter$ViewType:[I

    sget-object v1, Lcom/android/vending/AssetItemAdapter$ViewType;->SNIPPET_LIST_VIEW:Lcom/android/vending/AssetItemAdapter$ViewType;

    invoke-virtual {v1}, Lcom/android/vending/AssetItemAdapter$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_7
    return-void

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_4

    .line 576
    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_1

    :catch_7
    move-exception v0

    goto :goto_0
.end method
