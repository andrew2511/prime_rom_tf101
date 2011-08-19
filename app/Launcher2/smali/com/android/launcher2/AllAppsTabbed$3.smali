.class Lcom/android/launcher2/AllAppsTabbed$3;
.super Ljava/lang/Object;
.source "AllAppsTabbed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AllAppsTabbed;->onLayout(ZIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AllAppsTabbed;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AllAppsTabbed;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/launcher2/AllAppsTabbed$3;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher2/AllAppsTabbed$3;->this$0:Lcom/android/launcher2/AllAppsTabbed;

    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsTabbed;->requestLayout()V

    .line 184
    return-void
.end method
