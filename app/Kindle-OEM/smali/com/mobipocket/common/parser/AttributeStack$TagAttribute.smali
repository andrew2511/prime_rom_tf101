.class Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
.super Ljava/lang/Object;
.source "AttributeStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/parser/AttributeStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagAttribute"
.end annotation


# instance fields
.field encodedValue:I

.field name:S

.field value:Lcom/mobipocket/common/parser/StrDescriptor;


# direct methods
.method private constructor <init>(S)V
    .locals 1
    .parameter "attributeName"

    .prologue
    .line 47
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;-><init>(SI)V

    .line 48
    return-void
.end method

.method private constructor <init>(SI)V
    .locals 1
    .parameter "attributeName"
    .parameter "encodedValue"

    .prologue
    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->encodedValue:I

    .line 52
    iput-short p1, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    .line 53
    iput p2, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->encodedValue:I

    .line 54
    if-ne p2, v0, :cond_0

    .line 55
    new-instance v0, Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-direct {v0}, Lcom/mobipocket/common/parser/StrDescriptor;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    goto :goto_0
.end method

.method synthetic constructor <init>(SILcom/mobipocket/common/parser/AttributeStack$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;-><init>(SI)V

    return-void
.end method

.method synthetic constructor <init>(SLcom/mobipocket/common/parser/AttributeStack$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;-><init>(S)V

    return-void
.end method

.method static synthetic access$200(Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;)Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->cloneTagAttribute()Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    move-result-object v0

    return-object v0
.end method

.method private cloneTagAttribute()Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;

    iget-short v1, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->name:S

    iget v2, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->encodedValue:I

    invoke-direct {v0, v1, v2}, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;-><init>(SI)V

    .line 67
    .local v0, attr:Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;
    iget-object v1, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, v0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    iget-object v2, p0, Lcom/mobipocket/common/parser/AttributeStack$TagAttribute;->value:Lcom/mobipocket/common/parser/StrDescriptor;

    invoke-virtual {v1, v2}, Lcom/mobipocket/common/parser/StrDescriptor;->concat(Lcom/mobipocket/common/parser/StrDescriptor;)V

    .line 71
    :cond_0
    return-object v0
.end method
