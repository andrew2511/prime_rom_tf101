.class public Lcom/asus/vibe/item/VibeParam;
.super Lcom/asus/vibe/item/VibeItem;
.source "VibeParam.java"


# static fields
.field private static final serialVersionUID:J = -0x16443f5c6986912fL


# instance fields
.field public cont:Lcom/asus/vibe/item/VibeItem_Cont;

.field public detail:Lcom/asus/vibe/item/VibeItem_Detail;

.field public main:Lcom/asus/vibe/item/VibeItem_Main;

.field public pack:Lcom/asus/vibe/item/VibeItem_Package;

.field public sub:Lcom/asus/vibe/item/VibeItem_Sub;

.field public tabType:I

.field public vibeAction:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/asus/vibe/item/VibeItem;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/asus/vibe/item/VibeParam;)V
    .locals 2
    .parameter "ref"

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/asus/vibe/item/VibeItem;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/asus/vibe/item/VibeParam;->vibeAction:Ljava/lang/String;

    .line 18
    iget v0, p1, Lcom/asus/vibe/item/VibeParam;->tabType:I

    iput v0, p0, Lcom/asus/vibe/item/VibeParam;->tabType:I

    .line 19
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    iput-object v0, p0, Lcom/asus/vibe/item/VibeParam;->main:Lcom/asus/vibe/item/VibeItem_Main;

    .line 20
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    iput-object v0, p0, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    .line 21
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    iput-object v0, p0, Lcom/asus/vibe/item/VibeParam;->cont:Lcom/asus/vibe/item/VibeItem_Cont;

    .line 22
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    iput-object v0, p0, Lcom/asus/vibe/item/VibeParam;->detail:Lcom/asus/vibe/item/VibeItem_Detail;

    .line 23
    iget-object v0, p1, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    iput-object v0, p0, Lcom/asus/vibe/item/VibeParam;->pack:Lcom/asus/vibe/item/VibeItem_Package;

    .line 24
    return-void
.end method
