.class Lcom/asus/Viewer/ViewImage$9;
.super Ljava/lang/Object;
.source "ViewImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/Viewer/ViewImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/Viewer/ViewImage;


# direct methods
.method constructor <init>(Lcom/asus/Viewer/ViewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 722
    iput-object p1, p0, Lcom/asus/Viewer/ViewImage$9;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/asus/Viewer/ViewImage$9;->this$0:Lcom/asus/Viewer/ViewImage;

    invoke-virtual {v0}, Lcom/asus/Viewer/ViewImage;->finish()V

    .line 727
    return-void
.end method
