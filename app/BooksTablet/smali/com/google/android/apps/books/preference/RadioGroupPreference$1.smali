.class Lcom/google/android/apps/books/preference/RadioGroupPreference$1;
.super Ljava/lang/Object;
.source "RadioGroupPreference.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/preference/RadioGroupPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;


# direct methods
.method constructor <init>(Lcom/google/android/apps/books/preference/RadioGroupPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;->this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1
    .parameter "group"
    .parameter "checkedId"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;->this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-static {v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->access$000(Lcom/google/android/apps/books/preference/RadioGroupPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/books/preference/RadioGroupPreference$1;->this$0:Lcom/google/android/apps/books/preference/RadioGroupPreference;

    invoke-virtual {v0}, Lcom/google/android/apps/books/preference/RadioGroupPreference;->persistPreference()V

    goto :goto_0
.end method
