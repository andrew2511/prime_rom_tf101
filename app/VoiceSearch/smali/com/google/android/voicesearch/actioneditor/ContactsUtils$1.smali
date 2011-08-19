.class final Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;
.super Ljava/lang/Object;
.source "ContactsUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/voicesearch/actioneditor/ContactsUtils;->sortForType([Lcom/google/android/voicesearch/actions/Contact;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/android/voicesearch/actions/Contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput p1, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/android/voicesearch/actions/Contact;Lcom/google/android/voicesearch/actions/Contact;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 140
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 141
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/Contact;->getType()I

    move-result v1

    .line 144
    invoke-virtual {p2}, Lcom/google/android/voicesearch/actions/Contact;->getType()I

    move-result v2

    .line 145
    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-ne v1, v3, :cond_1

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-eq v2, v3, :cond_1

    .line 146
    const/4 v0, -0x1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->val$type:I

    if-eq v1, v2, :cond_0

    .line 149
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 137
    check-cast p1, Lcom/google/android/voicesearch/actions/Contact;

    check-cast p2, Lcom/google/android/voicesearch/actions/Contact;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/ContactsUtils$1;->compare(Lcom/google/android/voicesearch/actions/Contact;Lcom/google/android/voicesearch/actions/Contact;)I

    move-result v0

    return v0
.end method
