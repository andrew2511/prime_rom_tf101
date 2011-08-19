.class public Lcom/google/android/voicesearch/actioneditor/ContactSpan;
.super Ljava/lang/Object;
.source "ContactSpan.java"


# instance fields
.field private mAddressEnd:I

.field private mAddressStart:I

.field private mContact:Lcom/google/android/voicesearch/actions/Contact;

.field private mNameEnd:I

.field private mNameStart:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->parseContact(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method private parseContact(Ljava/lang/String;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 42
    const-string v0, "<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 43
    if-gez v0, :cond_1

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameEnd:I

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 53
    :goto_0
    const-string v1, ">"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 54
    if-ltz v1, :cond_0

    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    if-ge v1, v2, :cond_2

    .line 55
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 56
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    :goto_1
    iput v4, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameStart:I

    .line 64
    iget v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameStart:I

    iget v3, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameEnd:I

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Lcom/google/android/voicesearch/actions/Contact;

    const-string v3, ""

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    .line 68
    return-void

    .line 48
    :cond_1
    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameEnd:I

    .line 49
    iput v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_2
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressEnd:I

    goto :goto_1
.end method


# virtual methods
.method public getAddressEnd()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressEnd:I

    return v0
.end method

.method public getAddressStart()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mAddressStart:I

    return v0
.end method

.method public getContact()Lcom/google/android/voicesearch/actions/Contact;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mContact:Lcom/google/android/voicesearch/actions/Contact;

    return-object v0
.end method

.method public getNameEnd()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameEnd:I

    return v0
.end method

.method public getNameStart()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/android/voicesearch/actioneditor/ContactSpan;->mNameStart:I

    return v0
.end method
