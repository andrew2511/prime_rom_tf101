.class synthetic Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;
.super Ljava/lang/Object;
.source "UnifiedLibraryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/UnifiedLibraryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 378
    invoke-static {}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->values()[Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I

    :try_start_0
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->LOCAL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->PERIODICALS_ONLY_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ARCHIVED_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/amazon/kcp/library/UnifiedLibraryActivity$3;->$SwitchMap$com$amazon$kcp$library$LibraryActivity$LibraryFilter:[I

    sget-object v1, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryActivity$LibraryFilter;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method