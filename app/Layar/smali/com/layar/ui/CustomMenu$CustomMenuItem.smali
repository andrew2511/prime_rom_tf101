.class public Lcom/layar/ui/CustomMenu$CustomMenuItem;
.super Ljava/lang/Object;
.source "CustomMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/ui/CustomMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomMenuItem"
.end annotation


# instance fields
.field public icon:I

.field public id:I

.field public label:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(IILjava/lang/CharSequence;)V
    .locals 0
    .parameter "id"
    .parameter "icon"
    .parameter "label"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/layar/ui/CustomMenu$CustomMenuItem;->id:I

    .line 32
    iput p2, p0, Lcom/layar/ui/CustomMenu$CustomMenuItem;->icon:I

    .line 33
    iput-object p3, p0, Lcom/layar/ui/CustomMenu$CustomMenuItem;->label:Ljava/lang/CharSequence;

    .line 34
    return-void
.end method
