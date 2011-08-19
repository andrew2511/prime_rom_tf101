.class public final enum Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;
.super Ljava/lang/Enum;
.source "LibraryBookView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/LibraryBookView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

.field public static final enum AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

.field public static final enum DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

.field public static final enum DOWNLOADING:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

.field public static final enum DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

.field public static final enum DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

.field public static final enum DOWNLOAD_QUEUED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

.field public static final enum REMOTE:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    const-string v1, "DOWNLOADED"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    .line 53
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    const-string v1, "DOWNLOADING"

    invoke-direct {v0, v1, v4}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADING:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    .line 58
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    const-string v1, "DOWNLOAD_QUEUED"

    invoke-direct {v0, v1, v5}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_QUEUED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    .line 63
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    const-string v1, "DOWNLOAD_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    .line 68
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    const-string v1, "DOWNLOAD_PAUSED"

    invoke-direct {v0, v1, v7}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    .line 73
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    const-string v1, "AI_SEARCH_RESULT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    .line 78
    new-instance v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    const-string v1, "REMOTE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->REMOTE:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    .line 43
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADING:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_QUEUED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->AI_SEARCH_RESULT:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->REMOTE:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->$VALUES:[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static createFromDownloadBookItemState(I)Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;
    .locals 2
    .parameter

    .prologue
    .line 88
    packed-switch p0, :pswitch_data_0

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IDownloadBookItem is in an unknown download state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    :goto_0
    return-object v0

    .line 91
    :pswitch_0
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_QUEUED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    goto :goto_0

    .line 93
    :pswitch_1
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADING:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    goto :goto_0

    .line 95
    :pswitch_2
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_FAILED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    goto :goto_0

    .line 97
    :pswitch_3
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOAD_PAUSED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    goto :goto_0

    .line 99
    :pswitch_4
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->DOWNLOADED:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    goto :goto_0

    .line 101
    :pswitch_5
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->REMOTE:Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;
    .locals 1
    .parameter

    .prologue
    .line 43
    const-class v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->$VALUES:[Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/ui/LibraryBookView$ViewState;

    return-object v0
.end method
