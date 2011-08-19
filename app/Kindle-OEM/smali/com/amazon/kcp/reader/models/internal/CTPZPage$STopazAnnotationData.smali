.class public final Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;
.super Ljava/lang/Object;
.source "CTPZPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/CTPZPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "STopazAnnotationData"
.end annotation


# instance fields
.field public final end:I

.field public final index:I

.field public final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "start"
    .parameter "end"
    .parameter "index"

    .prologue
    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 990
    iput p1, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->start:I

    .line 991
    iput p2, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->end:I

    .line 992
    iput p3, p0, Lcom/amazon/kcp/reader/models/internal/CTPZPage$STopazAnnotationData;->index:I

    .line 993
    return-void
.end method
