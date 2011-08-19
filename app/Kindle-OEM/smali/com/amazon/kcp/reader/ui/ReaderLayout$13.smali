.class synthetic Lcom/amazon/kcp/reader/ui/ReaderLayout$13;
.super Ljava/lang/Object;
.source "ReaderLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 468
    invoke-static {}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->values()[Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$13;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    :try_start_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$13;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LPR:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$13;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->BEGINNING:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
