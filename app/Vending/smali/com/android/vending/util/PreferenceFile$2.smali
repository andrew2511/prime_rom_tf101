.class Lcom/android/vending/util/PreferenceFile$2;
.super Lcom/android/vending/util/PreferenceFile$SharedPreference;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/vending/util/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/android/vending/util/PreferenceFile$SharedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/vending/util/PreferenceFile$SharedPreference",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/vending/util/PreferenceFile;


# direct methods
.method constructor <init>(Lcom/android/vending/util/PreferenceFile;Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/vending/util/PreferenceFile$2;->this$0:Lcom/android/vending/util/PreferenceFile;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/vending/util/PreferenceFile$SharedPreference;-><init>(Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/android/vending/util/PreferenceFile$2;->read(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected read(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1
    .parameter "sp"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$2;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/vending/util/PreferenceFile$2;->mDefaultValue:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/util/PreferenceFile$2;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V

    return-void
.end method

.method protected write(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;)V
    .locals 1
    .parameter "editor"
    .parameter "value"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$2;->mKey:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    return-void
.end method
