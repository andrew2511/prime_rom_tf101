.class public Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView$Factory;
.super Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;
.source "DefaultSuggestionView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/ui/DefaultSuggestionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 258
    const-string v0, "default"

    const v1, 0x7f040010

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/googlequicksearchbox/ui/ListEntryViewInflater;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    .line 259
    return-void
.end method
