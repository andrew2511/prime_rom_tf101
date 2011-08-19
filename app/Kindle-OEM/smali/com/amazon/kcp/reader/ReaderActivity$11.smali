.class synthetic Lcom/amazon/kcp/reader/ReaderActivity$11;
.super Ljava/lang/Object;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$reader$EditNoteActivity$EditResult:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

.field static final synthetic $SwitchMap$com$amazon$kcp$reader$ObjectSelectionModel$SelectionState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 801
    invoke-static {}, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->values()[Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$EditNoteActivity$EditResult:[I

    :try_start_0
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$EditNoteActivity$EditResult:[I

    sget-object v1, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->ADDED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$EditNoteActivity$EditResult:[I

    sget-object v1, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->EDITED:Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/EditNoteActivity$EditResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    .line 751
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->values()[Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$ObjectSelectionModel$SelectionState:[I

    :try_start_2
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$ObjectSelectionModel$SelectionState:[I

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->CREATING_SELECTION:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    :try_start_3
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$ObjectSelectionModel$SelectionState:[I

    sget-object v1, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->CHANGING_SELECTION:Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ObjectSelectionModel$SelectionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 350
    :goto_3
    invoke-static {}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->values()[Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    :try_start_4
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LOCATION:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    :try_start_5
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->LPR:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_5
    :try_start_6
    sget-object v0, Lcom/amazon/kcp/reader/ReaderActivity$11;->$SwitchMap$com$amazon$kcp$reader$IAndroidReaderController$StartPage:[I

    sget-object v1, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->BEGINNING:Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/IAndroidReaderController$StartPage;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_6
    return-void

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_0
.end method
