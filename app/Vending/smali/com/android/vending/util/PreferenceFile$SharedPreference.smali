.class public abstract Lcom/android/vending/util/PreferenceFile$SharedPreference;
.super Ljava/lang/Object;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/util/PreferenceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SharedPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mFile:Lcom/android/vending/util/PreferenceFile;

.field final mKey:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/android/vending/util/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .parameter "file"
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/util/PreferenceFile;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/android/vending/util/PreferenceFile$SharedPreference;,"Lcom/android/vending/util/PreferenceFile$SharedPreference<TT;>;"
    .local p3, defaultValue:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mFile:Lcom/android/vending/util/PreferenceFile;

    .line 129
    iput-object p2, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mDefaultValue:Ljava/lang/Object;

    .line 131
    return-void
.end method


# virtual methods
.method public final exists()Z
    .locals 2

    .prologue
    .line 145
    .local p0, this:Lcom/android/vending/util/PreferenceFile$SharedPreference;,"Lcom/android/vending/util/PreferenceFile$SharedPreference<TT;>;"
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mFile:Lcom/android/vending/util/PreferenceFile;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Lcom/android/vending/util/PreferenceFile$SharedPreference;,"Lcom/android/vending/util/PreferenceFile$SharedPreference<TT;>;"
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mFile:Lcom/android/vending/util/PreferenceFile;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->read(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final put(Ljava/lang/Object;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, this:Lcom/android/vending/util/PreferenceFile$SharedPreference;,"Lcom/android/vending/util/PreferenceFile$SharedPreference<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    iget-object v2, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mFile:Lcom/android/vending/util/PreferenceFile;

    invoke-virtual {v2}, Lcom/android/vending/util/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 151
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v0, p1}, Lcom/android/vending/util/PreferenceFile$SharedPreference;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 154
    return-void
.end method

.method protected abstract read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 158
    .local p0, this:Lcom/android/vending/util/PreferenceFile$SharedPreference;,"Lcom/android/vending/util/PreferenceFile$SharedPreference<TT;>;"
    iget-object v0, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mFile:Lcom/android/vending/util/PreferenceFile;

    invoke-virtual {v0}, Lcom/android/vending/util/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/util/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 159
    return-void
.end method

.method protected abstract write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)V"
        }
    .end annotation
.end method
