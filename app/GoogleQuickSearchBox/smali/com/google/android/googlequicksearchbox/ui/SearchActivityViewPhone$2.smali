.class Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$2;
.super Ljava/lang/Object;
.source "SearchActivityViewPhone.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/ui/QueryTextView$DrawableStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableStateChange([I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;

    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->access$100(Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 97
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone$2;->this$0:Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;

    iget-object v0, v0, Lcom/google/android/googlequicksearchbox/ui/SearchActivityViewPhone;->mQueryTextIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 102
    return-void
.end method
