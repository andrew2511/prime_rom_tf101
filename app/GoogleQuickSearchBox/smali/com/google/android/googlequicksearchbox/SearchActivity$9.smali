.class Lcom/google/android/googlequicksearchbox/SearchActivity$9;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Lcom/google/android/googlequicksearchbox/util/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/SearchActivity;->getShortcutsForQuery(Ljava/lang/String;Ljava/util/Collection;Lcom/google/android/googlequicksearchbox/Suggestions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/googlequicksearchbox/util/Consumer",
        "<",
        "Lcom/google/android/googlequicksearchbox/ShortcutList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

.field final synthetic val$suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/SearchActivity;Lcom/google/android/googlequicksearchbox/Suggestions;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 662
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$9;->this$0:Lcom/google/android/googlequicksearchbox/SearchActivity;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$9;->val$suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/googlequicksearchbox/ShortcutList;)Z
    .locals 1
    .parameter "shortcuts"

    .prologue
    .line 664
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/SearchActivity$9;->val$suggestions:Lcom/google/android/googlequicksearchbox/Suggestions;

    invoke-virtual {v0, p1}, Lcom/google/android/googlequicksearchbox/Suggestions;->setShortcuts(Lcom/google/android/googlequicksearchbox/ShortcutList;)V

    .line 665
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic consume(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 662
    check-cast p1, Lcom/google/android/googlequicksearchbox/ShortcutList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/SearchActivity$9;->consume(Lcom/google/android/googlequicksearchbox/ShortcutList;)Z

    move-result v0

    return v0
.end method
