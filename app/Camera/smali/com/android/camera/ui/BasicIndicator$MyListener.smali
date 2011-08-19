.class Lcom/android/camera/ui/BasicIndicator$MyListener;
.super Ljava/lang/Object;
.source "BasicIndicator.java"

# interfaces
.implements Lcom/android/camera/ui/GLListView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/BasicIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/camera/ui/PreferenceAdapter;

.field final synthetic this$0:Lcom/android/camera/ui/BasicIndicator;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/BasicIndicator;Lcom/android/camera/ui/PreferenceAdapter;)V
    .locals 0
    .parameter
    .parameter "adapter"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/ui/BasicIndicator$MyListener;->this$0:Lcom/android/camera/ui/BasicIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lcom/android/camera/ui/BasicIndicator$MyListener;->mAdapter:Lcom/android/camera/ui/PreferenceAdapter;

    .line 114
    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/android/camera/ui/GLView;I)V
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator$MyListener;->mAdapter:Lcom/android/camera/ui/PreferenceAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/PreferenceAdapter;->onItemSelected(Lcom/android/camera/ui/GLView;I)V

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/BasicIndicator$MyListener;->this$0:Lcom/android/camera/ui/BasicIndicator;

    const/4 v1, 0x1

    sub-int v1, p2, v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/BasicIndicator;->onPreferenceChanged(I)V

    .line 119
    return-void
.end method
