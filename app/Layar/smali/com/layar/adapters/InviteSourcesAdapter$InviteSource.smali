.class public Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;
.super Ljava/lang/Object;
.source "InviteSourcesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/InviteSourcesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InviteSource"
.end annotation


# instance fields
.field public iconId:I

.field public id:I

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "text"
    .parameter "iconId"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->id:I

    .line 22
    iput-object p2, p0, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->text:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/layar/adapters/InviteSourcesAdapter$InviteSource;->iconId:I

    .line 24
    return-void
.end method
