.class public abstract Lcom/mobipocket/common/parser/EBookParser;
.super Ljava/lang/Object;
.source "EBookParser.java"


# static fields
.field public static final AskAgain:I = 0x4

.field public static final Blank:I = 0x3

.field public static final BreakText:I = 0x5

.field public static final CDataContent:I = 0x6

.field public static final Javascript:I = 0x7

.field public static final None:I = 0x0

.field public static final TableNotAuthorizedTag:I = 0x8

.field public static final Tag:I = 0x2

.field public static final Text:I = 0x1


# instance fields
.field protected lexer:Lcom/mobipocket/common/parser/EBookLexer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addTableToFlattenID(I)V
.end method

.method public abstract getAttributeStack()Lcom/mobipocket/common/parser/AttributeStack;
.end method

.method public abstract getCurrentStyle()Lcom/mobipocket/common/parser/styles/StyleDescriptor;
.end method

.method public abstract getPosition()I
.end method

.method public abstract get_cur_entity()I
.end method

.method public abstract get_next_entity()I
.end method

.method public abstract get_tag([Z[Z)S
.end method

.method public abstract get_text()Lcom/mobipocket/common/parser/StrDescriptor;
.end method

.method public abstract hasMoreEntityAtCurrentPosition()Z
.end method

.method public abstract init(IILcom/mobipocket/common/parser/styles/StyleDescriptor;Lcom/mobipocket/common/parser/TagStack;Lcom/mobipocket/common/parser/styles/StyleStack;)V
.end method

.method public abstract init(IZLcom/mobipocket/common/parser/styles/StyleDescriptor;)Z
.end method

.method public abstract loadParserState([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract saveParserState(Lcom/mobipocket/common/parser/TagAndAttributeStack;I)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public setPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mobipocket/common/parser/EBookParser;->lexer:Lcom/mobipocket/common/parser/EBookLexer;

    invoke-virtual {v0, p1}, Lcom/mobipocket/common/parser/EBookLexer;->set_position(I)V

    .line 49
    return-void
.end method

.method public abstract setReturnUnautorizedTableTag(Z)V
.end method

.method public abstract setTableEnabled(Z)V
.end method
