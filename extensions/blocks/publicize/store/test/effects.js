/**
 * @jest-environment jsdom
 */

 /**
  * Internal dependencies
  */
import { computeTweetBlocks } from '../effects';

describe( 'computeTweetBlocks', () => {
	it( 'returns a supported block', () => {
		const blocks = [
			{
				name: 'core/paragraph',
				clientId: 'uuid-1',
				innerBlocks: [],
			},
		];
		expect( computeTweetBlocks( blocks ) ).toEqual( blocks );
	} );

	it( 'does not return a supported child block of an unsupported container block', () => {
		const blocks = [
			{
				name: 'jetpack/contact-form',
				clientId: 'uuid-1',
				innerBlocks: [
					{
						name: 'core/paragraph',
						clientId: 'uuid-2',
						innerBlocks: [],
					},
				],
			},
		];

		expect( computeTweetBlocks( blocks ) ).toEqual( [] );
	} );

	it( 'returns a supported child block of a supported container block', () => {
		const blocks = [
			{
				name: 'core/column',
				clientId: 'uuid-1',
				innerBlocks: [
					{
						name: 'core/paragraph',
						clientId: 'uuid-2',
						innerBlocks: [],
					},
				],
			},
		];
		const expected = [
			{
				name: 'core/paragraph',
				clientId: 'uuid-2',
				innerBlocks: [],
			},
		];

		expect( computeTweetBlocks( blocks ) ).toEqual( expected );
	} );

	it( 'flattens the block tree', () => {
		const blocks = [
			{
				name: 'core/paragraph',
				clientId: 'uuid-1',
				innerBlocks: [],
			},
			{
				name: 'core/group',
				clientId: 'uuid-2',
				innerBlocks: [
					{
						name: 'core/paragraph',
						clientId: 'uuid-3',
						innerBlocks: [],
					},
				],
			},
			{
				name: 'core/paragraph',
				clientId: 'uuid-4',
				innerBlocks: [],
			},
		];
		const expected = [
			{
				name: 'core/paragraph',
				clientId: 'uuid-1',
				innerBlocks: [],
			},
			{
				name: 'core/paragraph',
				clientId: 'uuid-3',
				innerBlocks: [],
			},
			{
				name: 'core/paragraph',
				clientId: 'uuid-4',
				innerBlocks: [],
			},
		];

		expect( computeTweetBlocks( blocks ) ).toEqual( expected );
	} );
} );

