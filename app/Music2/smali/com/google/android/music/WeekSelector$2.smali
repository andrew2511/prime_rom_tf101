.class Lcom/google/android/music/WeekSelector$2;
.super Ljava/lang/Object;
.source "WeekSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/WeekSelector;
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
    .line 59
    iput-object p1, p0, Lcom/google/android/music/WeekSelector$2;->this$0:Lcom/google/android/music/WeekSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 61
    iget-object v1, p0, Lcom/google/android/music/WeekSelector$2;->this$0:Lcom/google/android/music/WeekSelector;

    iget-object v1, v1, Lcom/google/android/music/WeekSelector;->mWeeks:Lcom/google/android/music/VerticalTextSpinner;

    invoke-virtual {v1}, Lcom/google/android/music/VerticalTextSpinner;->getCurrentSelectedPos()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 62
    .local v0, numweeks:I
    iget-object v1, p0, Lcom/google/android/music/WeekSelector$2;->this$0:Lcom/google/android/music/WeekSelector;

    const-string v2, "numweeks"

    invoke-static {v1, v2, v0}, Lcom/google/android/music/MusicUtils;->setIntPref(Landroid/content/Context;Ljava/lang/String;I)V

    .line 63
    iget-object v1, p0, Lcom/google/android/music/WeekSelector$2;->this$0:Lcom/google/android/music/WeekSelector;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/google/android/music/WeekSelector;->setResult(I)V

    .line 64
    iget-object v1, p0, Lcom/google/android/music/WeekSelector$2;->this$0:Lcom/google/android/music/WeekSelector;

    invoke-virtual {v1}, Lcom/google/android/music/WeekSelector;->finish()V

    .line 65
    return-void
.end method
