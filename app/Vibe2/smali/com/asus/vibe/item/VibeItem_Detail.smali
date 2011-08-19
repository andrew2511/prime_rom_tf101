.class public Lcom/asus/vibe/item/VibeItem_Detail;
.super Lcom/asus/vibe/item/VibeItem_Cont;
.source "VibeItem_Detail.java"


# static fields
.field private static final serialVersionUID:J = -0x7a2ff2c83b592a84L


# instance fields
.field public mDescription:Ljava/lang/String;

.field public mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/asus/vibe/item/VibeUri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/asus/vibe/item/VibeItem_Cont;-><init>()V

    return-void
.end method
