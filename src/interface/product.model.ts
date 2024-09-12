import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';
import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity('product')
export class ProductModel {
  @ApiPropertyOptional({ type: Number })
  @PrimaryGeneratedColumn()
  id?: number;
  @ApiProperty({ type: Number })
  @Column()
  CategoryId?: number;
  @ApiProperty({ type: String })
  @Column()
  categoryName: string;
  @ApiProperty({ type: String })
  @Column({ unique: true })
  sku?: string;
  @ApiProperty({ type: String })
  @Column()
  name?: string;
  @ApiProperty({ type: String })
  @Column()
  description: string;
  @ApiProperty({ type: Number })
  @Column()
  weight: number;
  @ApiProperty({ type: Number })
  @Column()
  width: number;
  @ApiProperty({ type: Number })
  @Column()
  length: number;
  @ApiProperty({ type: Number })
  @Column()
  height: number;
  @ApiProperty({ type: String })
  @Column()
  image: string;
  @ApiProperty({ type: Number })
  @Column()
  price?: number;
}
