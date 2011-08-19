.class public Lcom/amazon/kcp/application/IBookData$Type;
.super Ljava/lang/Object;
.source "IBookData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/IBookData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Type"
.end annotation


# static fields
.field public static final MOBI:Lcom/amazon/kcp/application/IBookData$Type;

.field public static final TOPAZ:Lcom/amazon/kcp/application/IBookData$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/amazon/kcp/application/IBookData$Type;

    invoke-direct {v0}, Lcom/amazon/kcp/application/IBookData$Type;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/IBookData$Type;->MOBI:Lcom/amazon/kcp/application/IBookData$Type;

    .line 20
    new-instance v0, Lcom/amazon/kcp/application/IBookData$Type;

    invoke-direct {v0}, Lcom/amazon/kcp/application/IBookData$Type;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/IBookData$Type;->TOPAZ:Lcom/amazon/kcp/application/IBookData$Type;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
