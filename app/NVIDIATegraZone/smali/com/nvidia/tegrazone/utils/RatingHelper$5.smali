.class final Lcom/nvidia/tegrazone/utils/RatingHelper$5;
.super Ljava/lang/Object;
.source "RatingHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nvidia/tegrazone/utils/RatingHelper;->handleRateThis(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;


# direct methods
.method constructor <init>(Lcom/nvidia/tegrazone/utils/RatingHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nvidia/tegrazone/utils/RatingHelper$5;->this$0:Lcom/nvidia/tegrazone/utils/RatingHelper;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 128
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 129
    return-void
.end method
