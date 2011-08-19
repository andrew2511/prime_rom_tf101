.class public Lcom/layar/data/DialogData;
.super Ljava/lang/Object;
.source "DialogData.java"


# instance fields
.field public description:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "description"
    .parameter "iconUrl"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/layar/data/DialogData;->title:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/layar/data/DialogData;->description:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/layar/data/DialogData;->icon:Ljava/lang/String;

    .line 18
    return-void
.end method
