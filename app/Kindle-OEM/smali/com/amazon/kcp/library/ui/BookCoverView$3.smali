.class synthetic Lcom/amazon/kcp/library/ui/BookCoverView$3;
.super Ljava/lang/Object;
.source "BookCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$amazon$kcp$library$ui$BookCoverView$OverlayVisibility:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 306
    invoke-static {}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->values()[Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$3;->$SwitchMap$com$amazon$kcp$library$ui$BookCoverView$OverlayVisibility:[I

    :try_start_0
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$3;->$SwitchMap$com$amazon$kcp$library$ui$BookCoverView$OverlayVisibility:[I

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->INVISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$3;->$SwitchMap$com$amazon$kcp$library$ui$BookCoverView$OverlayVisibility:[I

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/amazon/kcp/library/ui/BookCoverView$3;->$SwitchMap$com$amazon$kcp$library$ui$BookCoverView$OverlayVisibility:[I

    sget-object v1, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->VISIBLE_IF_DEFAULT_COVER:Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/BookCoverView$OverlayVisibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
