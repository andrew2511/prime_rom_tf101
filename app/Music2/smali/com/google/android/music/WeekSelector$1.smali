.class Lcom/google/android/music/WeekSelector$1;
.super Ljava/lang/Object;
.source "WeekSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/WeekSelector;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/WeekSelector;


# direct methods
.method constructor <init>(Lcom/google/android/music/WeekSelector;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/android/music/WeekSelector$1;->this$0:Lcom/google/android/music/WeekSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/music/WeekSelector$1;->this$0:Lcom/google/android/music/WeekSelector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/music/WeekSelector;->setResult(I)V

    .line 44
    iget-object v0, p0, Lcom/google/android/music/WeekSelector$1;->this$0:Lcom/google/android/music/WeekSelector;

    invoke-virtual {v0}, Lcom/google/android/music/WeekSelector;->finish()V

    .line 45
    return-void
.end method
