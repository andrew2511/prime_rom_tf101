.class Lcom/newspaperdirect/pressreader/android/Authorization$3;
.super Ljava/lang/Object;
.source "Authorization.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/BaseChecker$OnNegativeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/Authorization;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/Authorization;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/Authorization;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/Authorization$3;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeResult()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/Authorization$3;->this$0:Lcom/newspaperdirect/pressreader/android/Authorization;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/Authorization;->finish()V

    .line 108
    return-void
.end method
