.class public Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;
.super Ljava/lang/Object;
.source "SyncSettingsFragment.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/login/SyncSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncSettingsItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final adapterType:Landroid/content/SyncAdapterType;

.field public checked:Z

.field public final label:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SyncAdapterType;Ljava/lang/String;)V
    .locals 1
    .parameter "adapterType"
    .parameter "label"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->adapterType:Landroid/content/SyncAdapterType;

    .line 169
    iput-object p2, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->checked:Z

    .line 171
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    check-cast p1, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->compareTo(Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;)I

    move-result v0

    return v0
.end method

.method public getSyncAdapterType()Landroid/content/SyncAdapterType;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->adapterType:Landroid/content/SyncAdapterType;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->checked:Z

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/google/android/gsf/login/SyncSettingsFragment$SyncSettingsItem;->label:Ljava/lang/String;

    return-object v0
.end method
