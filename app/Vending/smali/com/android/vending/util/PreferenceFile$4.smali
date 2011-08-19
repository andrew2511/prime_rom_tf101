.class Lcom/android/vending/util/PreferenceFile$4;
.super Lcom/android/vending/util/PreferenceFile$SharedPreference;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/vending/util/PreferenceFile$SharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/vending/util/PreferenceFile$SharedPreference",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/PreferenceFile;


# direct methods
.method constructor <init>(Lcom/android/vending/util/PreferenceFile;Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/vending/util/PreferenceFile$4;->this$0:Lcom/android/vending/util/PreferenceFile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;-><init>(Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected read(Landroid/content/SharedPreferences;)Ljava/lang/Integer;
    .locals 2
    .parameter "sp"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$4;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/vending/util/PreferenceFile$4;->mDefaultValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/android/vending/util/PreferenceFile$4;->read(Landroid/content/SharedPreferences;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V
    .locals 2
    .parameter "editor"
    .parameter "value"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$4;->mKey:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    return-void
.end method

.method protected bridge synthetic write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/util/PreferenceFile$4;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Integer;)V

    return-void
.end method
