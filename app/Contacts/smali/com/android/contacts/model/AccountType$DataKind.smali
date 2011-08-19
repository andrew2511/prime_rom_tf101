.class public Lcom/android/contacts/model/AccountType$DataKind;
.super Ljava/lang/Object;
.source "AccountType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/model/AccountType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataKind"
.end annotation


# instance fields
.field public actionAltHeader:Lcom/android/contacts/model/AccountType$StringInflater;

.field public actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

.field public actionBodySocial:Z

.field public actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

.field public dateFormatWithYear:Ljava/text/SimpleDateFormat;

.field public dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

.field public defaultValues:Landroid/content/ContentValues;

.field public editable:Z

.field public editorClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public fieldList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType$EditField;",
            ">;"
        }
    .end annotation
.end field

.field public iconAltRes:I

.field public iconRes:I

.field public isList:Z

.field public mimeType:Ljava/lang/String;

.field public resPackageName:Ljava/lang/String;

.field public titleRes:I

.field public typeColumn:Ljava/lang/String;

.field public typeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation
.end field

.field public typeOverallMax:I

.field public weight:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/AccountType$DataKind;->actionBodySocial:Z

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 7
    .parameter "mimeType"
    .parameter "titleRes"
    .parameter "iconRes"
    .parameter "weight"
    .parameter "editable"

    .prologue
    .line 227
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/contacts/model/AccountType$DataKind;-><init>(Ljava/lang/String;IIIZLjava/lang/Class;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZLjava/lang/Class;)V
    .locals 1
    .parameter "mimeType"
    .parameter "titleRes"
    .parameter "iconRes"
    .parameter "weight"
    .parameter "editable"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIIZ",
            "Ljava/lang/Class",
            "<+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 231
    .local p6, editorClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/view/View;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/model/AccountType$DataKind;->actionBodySocial:Z

    .line 232
    iput-object p1, p0, Lcom/android/contacts/model/AccountType$DataKind;->mimeType:Ljava/lang/String;

    .line 233
    iput p2, p0, Lcom/android/contacts/model/AccountType$DataKind;->titleRes:I

    .line 234
    iput p3, p0, Lcom/android/contacts/model/AccountType$DataKind;->iconRes:I

    .line 235
    iput p4, p0, Lcom/android/contacts/model/AccountType$DataKind;->weight:I

    .line 236
    iput-boolean p5, p0, Lcom/android/contacts/model/AccountType$DataKind;->editable:Z

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/model/AccountType$DataKind;->isList:Z

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/contacts/model/AccountType$DataKind;->typeOverallMax:I

    .line 239
    iput-object p6, p0, Lcom/android/contacts/model/AccountType$DataKind;->editorClass:Ljava/lang/Class;

    .line 240
    return-void
.end method
